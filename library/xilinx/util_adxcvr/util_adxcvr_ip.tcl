## AUTO GENERATED BY util_adxcvr.pl, DO NOT MODIFY!

source ../../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip.tcl

adi_ip_create util_adxcvr
adi_ip_files util_adxcvr [list \
  "util_adxcvr_constr.xdc" \
  "util_adxcvr_xcm.v" \
  "util_adxcvr_xch.v" \
  "util_adxcvr.v" ]

adi_ip_properties_lite util_adxcvr
adi_ip_constraints util_adxcvr "util_adxcvr_constr.xdc"

ipx::remove_all_bus_interface [ipx::current_core]

set_property driver_value 0 [ipx::get_ports -filter "direction==in" -of_objects [ipx::current_core]]

for {set n 0} {$n < 16} {incr n} {

  if {($n%4) == 0} {
  adi_if_infer_bus ADI:user:if_xcvr_cm slave up_cm_${n} [list \
    "sel                 up_cm_sel_${n}         "\
    "enb                 up_cm_enb_${n}         "\
    "addr                up_cm_addr_${n}        "\
    "wr                  up_cm_wr_${n}          "\
    "wdata               up_cm_wdata_${n}       "\
    "rdata               up_cm_rdata_${n}       "\
    "ready               up_cm_ready_${n}       "]
  }

  adi_if_infer_bus ADI:user:if_xcvr_cm slave up_es_${n} [list \
    "sel                 up_es_sel_${n}         "\
    "enb                 up_es_enb_${n}         "\
    "addr                up_es_addr_${n}        "\
    "wr                  up_es_wr_${n}          "\
    "wdata               up_es_wdata_${n}       "\
    "rdata               up_es_rdata_${n}       "\
    "ready               up_es_ready_${n}       "]

  adi_if_infer_bus ADI:user:if_xcvr_ch slave up_rx_${n} [list \
    "pll_locked          up_rx_pll_locked_${n}  "\
    "rst                 up_rx_rst_${n}         "\
    "user_ready          up_rx_user_ready_${n}  "\
    "rst_done            up_rx_rst_done_${n}    "\
    "lpm_dfe_n           up_rx_lpm_dfe_n_${n}   "\
    "rate                up_rx_rate_${n}        "\
    "sys_clk_sel         up_rx_sys_clk_sel_${n} "\
    "out_clk_sel         up_rx_out_clk_sel_${n} "\
    "sel                 up_rx_sel_${n}         "\
    "enb                 up_rx_enb_${n}         "\
    "addr                up_rx_addr_${n}        "\
    "wr                  up_rx_wr_${n}          "\
    "wdata               up_rx_wdata_${n}       "\
    "rdata               up_rx_rdata_${n}       "\
    "ready               up_rx_ready_${n}       "]

  adi_if_infer_bus ADI:user:if_xcvr_ch slave up_tx_${n} [list \
    "pll_locked          up_tx_pll_locked_${n}  "\
    "rst                 up_tx_rst_${n}         "\
    "user_ready          up_tx_user_ready_${n}  "\
    "rst_done            up_tx_rst_done_${n}    "\
    "lpm_dfe_n           up_tx_lpm_dfe_n_${n}   "\
    "rate                up_tx_rate_${n}        "\
    "sys_clk_sel         up_tx_sys_clk_sel_${n} "\
    "out_clk_sel         up_tx_out_clk_sel_${n} "\
    "sel                 up_tx_sel_${n}         "\
    "enb                 up_tx_enb_${n}         "\
    "addr                up_tx_addr_${n}        "\
    "wr                  up_tx_wr_${n}          "\
    "wdata               up_tx_wdata_${n}       "\
    "rdata               up_tx_rdata_${n}       "\
    "ready               up_tx_ready_${n}       "]

  ipx::add_bus_interface rx_${n} [ipx::current_core]
  set_property abstraction_type_vlnv xilinx.com:display_jesd204:jesd204_rx_bus_rtl:1.0 \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property bus_type_vlnv xilinx.com:display_jesd204:jesd204_rx_bus:1.0 \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property interface_mode master [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  ipx::add_port_map rxcharisk [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property physical_name rx_charisk_${n} [ipx::get_port_maps rxcharisk -of_objects \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]]
  ipx::add_port_map rxnotintable [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property physical_name rx_notintable_${n} [ipx::get_port_maps rxnotintable -of_objects \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]]
  ipx::add_port_map rxdisperr [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property physical_name rx_disperr_${n} [ipx::get_port_maps rxdisperr -of_objects \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]]
  ipx::add_port_map rxdata [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]
  set_property physical_name rx_data_${n} [ipx::get_port_maps rxdata -of_objects \
    [ipx::get_bus_interfaces rx_${n} -of_objects [ipx::current_core]]]

  ipx::add_bus_interface tx_${n} [ipx::current_core]
  set_property abstraction_type_vlnv xilinx.com:display_jesd204:jesd204_tx_bus_rtl:1.0 \
    [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]
  set_property bus_type_vlnv xilinx.com:display_jesd204:jesd204_tx_bus:1.0 \
    [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]
  set_property interface_mode slave [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]
  ipx::add_port_map txcharisk [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]
  set_property physical_name tx_charisk_${n} [ipx::get_port_maps txcharisk -of_objects \
    [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]]
  ipx::add_port_map txdata [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]
  set_property physical_name tx_data_${n} [ipx::get_port_maps txdata -of_objects \
    [ipx::get_bus_interfaces tx_${n} -of_objects [ipx::current_core]]]

}

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0} \
  [ipx::get_bus_interfaces up_es_0 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0} \
  [ipx::get_bus_interfaces up_rx_0 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0} \
  [ipx::get_bus_interfaces rx_0 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0} \
  [ipx::get_ports rx_*0* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0} \
  [ipx::get_bus_interfaces up_tx_0 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0} \
  [ipx::get_bus_interfaces tx_0 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0} \
  [ipx::get_ports tx_*0* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0)} \
  [ipx::get_ports cpll_ref_clk_0 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_0 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0)} \
  [ipx::get_ports qpll_ref_clk_0 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_qpll_rst_0 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 0) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 0)} \
  [ipx::get_bus_interfaces up_cm_0 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 1} \
  [ipx::get_bus_interfaces up_es_1 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 1} \
  [ipx::get_bus_interfaces up_rx_1 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 1} \
  [ipx::get_bus_interfaces rx_1 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 1} \
  [ipx::get_ports rx_*1* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 1} \
  [ipx::get_bus_interfaces up_tx_1 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 1} \
  [ipx::get_bus_interfaces tx_1 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 1} \
  [ipx::get_ports tx_*1* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 1) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 1)} \
  [ipx::get_ports cpll_ref_clk_1 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_1 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 2} \
  [ipx::get_bus_interfaces up_es_2 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 2} \
  [ipx::get_bus_interfaces up_rx_2 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 2} \
  [ipx::get_bus_interfaces rx_2 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 2} \
  [ipx::get_ports rx_*2* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 2} \
  [ipx::get_bus_interfaces up_tx_2 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 2} \
  [ipx::get_bus_interfaces tx_2 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 2} \
  [ipx::get_ports tx_*2* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 2) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 2)} \
  [ipx::get_ports cpll_ref_clk_2 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_2 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 3} \
  [ipx::get_bus_interfaces up_es_3 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 3} \
  [ipx::get_bus_interfaces up_rx_3 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 3} \
  [ipx::get_bus_interfaces rx_3 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 3} \
  [ipx::get_ports rx_*3* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 3} \
  [ipx::get_bus_interfaces up_tx_3 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 3} \
  [ipx::get_bus_interfaces tx_3 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 3} \
  [ipx::get_ports tx_*3* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 3) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 3)} \
  [ipx::get_ports cpll_ref_clk_3 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_3 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4} \
  [ipx::get_bus_interfaces up_es_4 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4} \
  [ipx::get_bus_interfaces up_rx_4 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4} \
  [ipx::get_bus_interfaces rx_4 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4} \
  [ipx::get_ports rx_*4* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4} \
  [ipx::get_bus_interfaces up_tx_4 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4} \
  [ipx::get_bus_interfaces tx_4 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4} \
  [ipx::get_ports tx_*4* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4)} \
  [ipx::get_ports cpll_ref_clk_4 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_4 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4)} \
  [ipx::get_ports qpll_ref_clk_4 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_qpll_rst_4 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 4) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 4)} \
  [ipx::get_bus_interfaces up_cm_4 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 5} \
  [ipx::get_bus_interfaces up_es_5 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 5} \
  [ipx::get_bus_interfaces up_rx_5 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 5} \
  [ipx::get_bus_interfaces rx_5 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 5} \
  [ipx::get_ports rx_*5* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 5} \
  [ipx::get_bus_interfaces up_tx_5 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 5} \
  [ipx::get_bus_interfaces tx_5 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 5} \
  [ipx::get_ports tx_*5* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 5) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 5)} \
  [ipx::get_ports cpll_ref_clk_5 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_5 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 6} \
  [ipx::get_bus_interfaces up_es_6 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 6} \
  [ipx::get_bus_interfaces up_rx_6 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 6} \
  [ipx::get_bus_interfaces rx_6 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 6} \
  [ipx::get_ports rx_*6* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 6} \
  [ipx::get_bus_interfaces up_tx_6 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 6} \
  [ipx::get_bus_interfaces tx_6 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 6} \
  [ipx::get_ports tx_*6* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 6) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 6)} \
  [ipx::get_ports cpll_ref_clk_6 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_6 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 7} \
  [ipx::get_bus_interfaces up_es_7 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 7} \
  [ipx::get_bus_interfaces up_rx_7 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 7} \
  [ipx::get_bus_interfaces rx_7 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 7} \
  [ipx::get_ports rx_*7* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 7} \
  [ipx::get_bus_interfaces up_tx_7 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 7} \
  [ipx::get_bus_interfaces tx_7 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 7} \
  [ipx::get_ports tx_*7* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 7) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 7)} \
  [ipx::get_ports cpll_ref_clk_7 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_7 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8} \
  [ipx::get_bus_interfaces up_es_8 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8} \
  [ipx::get_bus_interfaces up_rx_8 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8} \
  [ipx::get_bus_interfaces rx_8 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8} \
  [ipx::get_ports rx_*8* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8} \
  [ipx::get_bus_interfaces up_tx_8 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8} \
  [ipx::get_bus_interfaces tx_8 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8} \
  [ipx::get_ports tx_*8* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8)} \
  [ipx::get_ports cpll_ref_clk_8 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_8 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8)} \
  [ipx::get_ports qpll_ref_clk_8 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_qpll_rst_8 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 8) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 8)} \
  [ipx::get_bus_interfaces up_cm_8 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 9} \
  [ipx::get_bus_interfaces up_es_9 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 9} \
  [ipx::get_bus_interfaces up_rx_9 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 9} \
  [ipx::get_bus_interfaces rx_9 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 9} \
  [ipx::get_ports rx_*9* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 9} \
  [ipx::get_bus_interfaces up_tx_9 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 9} \
  [ipx::get_bus_interfaces tx_9 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 9} \
  [ipx::get_ports tx_*9* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 9) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 9)} \
  [ipx::get_ports cpll_ref_clk_9 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_9 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 10} \
  [ipx::get_bus_interfaces up_es_10 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 10} \
  [ipx::get_bus_interfaces up_rx_10 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 10} \
  [ipx::get_bus_interfaces rx_10 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 10} \
  [ipx::get_ports rx_*10* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 10} \
  [ipx::get_bus_interfaces up_tx_10 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 10} \
  [ipx::get_bus_interfaces tx_10 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 10} \
  [ipx::get_ports tx_*10* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 10) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 10)} \
  [ipx::get_ports cpll_ref_clk_10 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_10 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 11} \
  [ipx::get_bus_interfaces up_es_11 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 11} \
  [ipx::get_bus_interfaces up_rx_11 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 11} \
  [ipx::get_bus_interfaces rx_11 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 11} \
  [ipx::get_ports rx_*11* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 11} \
  [ipx::get_bus_interfaces up_tx_11 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 11} \
  [ipx::get_bus_interfaces tx_11 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 11} \
  [ipx::get_ports tx_*11* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 11) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 11)} \
  [ipx::get_ports cpll_ref_clk_11 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_11 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12} \
  [ipx::get_bus_interfaces up_es_12 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12} \
  [ipx::get_bus_interfaces up_rx_12 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12} \
  [ipx::get_bus_interfaces rx_12 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12} \
  [ipx::get_ports rx_*12* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12} \
  [ipx::get_bus_interfaces up_tx_12 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12} \
  [ipx::get_bus_interfaces tx_12 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12} \
  [ipx::get_ports tx_*12* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12)} \
  [ipx::get_ports cpll_ref_clk_12 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_12 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12)} \
  [ipx::get_ports qpll_ref_clk_12 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_qpll_rst_12 -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 12) or \
  (spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 12)} \
  [ipx::get_bus_interfaces up_cm_12 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 13} \
  [ipx::get_bus_interfaces up_es_13 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 13} \
  [ipx::get_bus_interfaces up_rx_13 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 13} \
  [ipx::get_bus_interfaces rx_13 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 13} \
  [ipx::get_ports rx_*13* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 13} \
  [ipx::get_bus_interfaces up_tx_13 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 13} \
  [ipx::get_bus_interfaces tx_13 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 13} \
  [ipx::get_ports tx_*13* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 13) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 13)} \
  [ipx::get_ports cpll_ref_clk_13 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_13 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 14} \
  [ipx::get_bus_interfaces up_es_14 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 14} \
  [ipx::get_bus_interfaces up_rx_14 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 14} \
  [ipx::get_bus_interfaces rx_14 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 14} \
  [ipx::get_ports rx_*14* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 14} \
  [ipx::get_bus_interfaces up_tx_14 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 14} \
  [ipx::get_bus_interfaces tx_14 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 14} \
  [ipx::get_ports tx_*14* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 14) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 14)} \
  [ipx::get_ports cpll_ref_clk_14 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_14 -of_objects [ipx::current_core]] 

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 15} \
  [ipx::get_bus_interfaces up_es_15 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 15} \
  [ipx::get_bus_interfaces up_rx_15 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 15} \
  [ipx::get_bus_interfaces rx_15 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 15} \
  [ipx::get_ports rx_*15* -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 15} \
  [ipx::get_bus_interfaces up_tx_15 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 15} \
  [ipx::get_bus_interfaces tx_15 -of_objects [ipx::current_core]]

set_property enablement_dependency {spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 15} \
  [ipx::get_ports tx_*15* -of_objects [ipx::current_core]] 

set_property enablement_dependency \
  {(spirit:decode(id('MODELPARAM_VALUE.TX_NUM_OF_LANES')) > 15) or \
  (spirit:decode(id('MODELPARAM_VALUE.RX_NUM_OF_LANES')) > 15)} \
  [ipx::get_ports cpll_ref_clk_15 -of_objects [ipx::current_core]] \
  [ipx::get_ports up_cpll_rst_15 -of_objects [ipx::current_core]] 

ipx::save_core [ipx::current_core]
