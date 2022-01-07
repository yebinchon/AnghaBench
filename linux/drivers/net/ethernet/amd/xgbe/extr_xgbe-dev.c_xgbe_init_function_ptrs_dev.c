
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int set_vxlan_id; int disable_vxlan; int enable_vxlan; int disable_ecc_sec; int disable_ecc_ded; int set_rss_lookup_table; int set_rss_hash_key; int disable_rss; int enable_rss; int config_dcb_pfc; int config_dcb_tc; int config_tc; int get_tx_tstamp; int get_tstamp_time; int set_tstamp_time; int update_tstamp_addend; int config_tstamp; int read_mmc_stats; int rx_mmc_int; int tx_mmc_int; int config_osp_mode; int config_tsf_mode; int config_rsf_mode; int config_tx_threshold; int config_rx_threshold; int riwt_to_usec; int usec_to_riwt; int config_tx_coalesce; int config_rx_coalesce; int config_rx_flow_control; int config_tx_flow_control; int tx_start_xmit; int is_context_desc; int is_last_desc; int rx_desc_reset; int tx_desc_reset; int rx_desc_init; int tx_desc_init; int exit; int init; int disable_int; int enable_int; int dev_read; int dev_xmit; int powerdown_rx; int powerup_rx; int powerdown_tx; int powerup_tx; int disable_rx; int enable_rx; int disable_tx; int enable_tx; int clr_gpio; int set_gpio; int write_ext_mii_regs; int read_ext_mii_regs; int set_ext_mii_mode; int set_speed; int write_mmd_regs; int read_mmd_regs; int update_vlan_hash_table; int disable_rx_vlan_filtering; int enable_rx_vlan_filtering; int disable_rx_vlan_stripping; int enable_rx_vlan_stripping; int disable_rx_csum; int enable_rx_csum; int config_rx_mode; int set_mac_address; int tx_complete; } ;


 int DBGPR (char*) ;
 int xgbe_clr_gpio ;
 int xgbe_config_dcb_pfc ;
 int xgbe_config_dcb_tc ;
 int xgbe_config_osp_mode ;
 int xgbe_config_rsf_mode ;
 int xgbe_config_rx_coalesce ;
 int xgbe_config_rx_flow_control ;
 int xgbe_config_rx_mode ;
 int xgbe_config_rx_threshold ;
 int xgbe_config_tc ;
 int xgbe_config_tsf_mode ;
 int xgbe_config_tstamp ;
 int xgbe_config_tx_coalesce ;
 int xgbe_config_tx_flow_control ;
 int xgbe_config_tx_threshold ;
 int xgbe_dev_read ;
 int xgbe_dev_xmit ;
 int xgbe_disable_ecc_ded ;
 int xgbe_disable_ecc_sec ;
 int xgbe_disable_int ;
 int xgbe_disable_rss ;
 int xgbe_disable_rx ;
 int xgbe_disable_rx_csum ;
 int xgbe_disable_rx_vlan_filtering ;
 int xgbe_disable_rx_vlan_stripping ;
 int xgbe_disable_tx ;
 int xgbe_disable_vxlan ;
 int xgbe_enable_int ;
 int xgbe_enable_rss ;
 int xgbe_enable_rx ;
 int xgbe_enable_rx_csum ;
 int xgbe_enable_rx_vlan_filtering ;
 int xgbe_enable_rx_vlan_stripping ;
 int xgbe_enable_tx ;
 int xgbe_enable_vxlan ;
 int xgbe_exit ;
 int xgbe_get_tstamp_time ;
 int xgbe_get_tx_tstamp ;
 int xgbe_init ;
 int xgbe_is_context_desc ;
 int xgbe_is_last_desc ;
 int xgbe_powerdown_rx ;
 int xgbe_powerdown_tx ;
 int xgbe_powerup_rx ;
 int xgbe_powerup_tx ;
 int xgbe_read_ext_mii_regs ;
 int xgbe_read_mmc_stats ;
 int xgbe_read_mmd_regs ;
 int xgbe_riwt_to_usec ;
 int xgbe_rx_desc_init ;
 int xgbe_rx_desc_reset ;
 int xgbe_rx_mmc_int ;
 int xgbe_set_ext_mii_mode ;
 int xgbe_set_gpio ;
 int xgbe_set_mac_address ;
 int xgbe_set_rss_hash_key ;
 int xgbe_set_rss_lookup_table ;
 int xgbe_set_speed ;
 int xgbe_set_tstamp_time ;
 int xgbe_set_vxlan_id ;
 int xgbe_tx_complete ;
 int xgbe_tx_desc_init ;
 int xgbe_tx_desc_reset ;
 int xgbe_tx_mmc_int ;
 int xgbe_tx_start_xmit ;
 int xgbe_update_tstamp_addend ;
 int xgbe_update_vlan_hash_table ;
 int xgbe_usec_to_riwt ;
 int xgbe_write_ext_mii_regs ;
 int xgbe_write_mmd_regs ;

void xgbe_init_function_ptrs_dev(struct xgbe_hw_if *hw_if)
{
 DBGPR("-->xgbe_init_function_ptrs\n");

 hw_if->tx_complete = xgbe_tx_complete;

 hw_if->set_mac_address = xgbe_set_mac_address;
 hw_if->config_rx_mode = xgbe_config_rx_mode;

 hw_if->enable_rx_csum = xgbe_enable_rx_csum;
 hw_if->disable_rx_csum = xgbe_disable_rx_csum;

 hw_if->enable_rx_vlan_stripping = xgbe_enable_rx_vlan_stripping;
 hw_if->disable_rx_vlan_stripping = xgbe_disable_rx_vlan_stripping;
 hw_if->enable_rx_vlan_filtering = xgbe_enable_rx_vlan_filtering;
 hw_if->disable_rx_vlan_filtering = xgbe_disable_rx_vlan_filtering;
 hw_if->update_vlan_hash_table = xgbe_update_vlan_hash_table;

 hw_if->read_mmd_regs = xgbe_read_mmd_regs;
 hw_if->write_mmd_regs = xgbe_write_mmd_regs;

 hw_if->set_speed = xgbe_set_speed;

 hw_if->set_ext_mii_mode = xgbe_set_ext_mii_mode;
 hw_if->read_ext_mii_regs = xgbe_read_ext_mii_regs;
 hw_if->write_ext_mii_regs = xgbe_write_ext_mii_regs;

 hw_if->set_gpio = xgbe_set_gpio;
 hw_if->clr_gpio = xgbe_clr_gpio;

 hw_if->enable_tx = xgbe_enable_tx;
 hw_if->disable_tx = xgbe_disable_tx;
 hw_if->enable_rx = xgbe_enable_rx;
 hw_if->disable_rx = xgbe_disable_rx;

 hw_if->powerup_tx = xgbe_powerup_tx;
 hw_if->powerdown_tx = xgbe_powerdown_tx;
 hw_if->powerup_rx = xgbe_powerup_rx;
 hw_if->powerdown_rx = xgbe_powerdown_rx;

 hw_if->dev_xmit = xgbe_dev_xmit;
 hw_if->dev_read = xgbe_dev_read;
 hw_if->enable_int = xgbe_enable_int;
 hw_if->disable_int = xgbe_disable_int;
 hw_if->init = xgbe_init;
 hw_if->exit = xgbe_exit;


 hw_if->tx_desc_init = xgbe_tx_desc_init;
 hw_if->rx_desc_init = xgbe_rx_desc_init;
 hw_if->tx_desc_reset = xgbe_tx_desc_reset;
 hw_if->rx_desc_reset = xgbe_rx_desc_reset;
 hw_if->is_last_desc = xgbe_is_last_desc;
 hw_if->is_context_desc = xgbe_is_context_desc;
 hw_if->tx_start_xmit = xgbe_tx_start_xmit;


 hw_if->config_tx_flow_control = xgbe_config_tx_flow_control;
 hw_if->config_rx_flow_control = xgbe_config_rx_flow_control;


 hw_if->config_rx_coalesce = xgbe_config_rx_coalesce;
 hw_if->config_tx_coalesce = xgbe_config_tx_coalesce;
 hw_if->usec_to_riwt = xgbe_usec_to_riwt;
 hw_if->riwt_to_usec = xgbe_riwt_to_usec;


 hw_if->config_rx_threshold = xgbe_config_rx_threshold;
 hw_if->config_tx_threshold = xgbe_config_tx_threshold;


 hw_if->config_rsf_mode = xgbe_config_rsf_mode;
 hw_if->config_tsf_mode = xgbe_config_tsf_mode;


 hw_if->config_osp_mode = xgbe_config_osp_mode;


 hw_if->tx_mmc_int = xgbe_tx_mmc_int;
 hw_if->rx_mmc_int = xgbe_rx_mmc_int;
 hw_if->read_mmc_stats = xgbe_read_mmc_stats;


 hw_if->config_tstamp = xgbe_config_tstamp;
 hw_if->update_tstamp_addend = xgbe_update_tstamp_addend;
 hw_if->set_tstamp_time = xgbe_set_tstamp_time;
 hw_if->get_tstamp_time = xgbe_get_tstamp_time;
 hw_if->get_tx_tstamp = xgbe_get_tx_tstamp;


 hw_if->config_tc = xgbe_config_tc;
 hw_if->config_dcb_tc = xgbe_config_dcb_tc;
 hw_if->config_dcb_pfc = xgbe_config_dcb_pfc;


 hw_if->enable_rss = xgbe_enable_rss;
 hw_if->disable_rss = xgbe_disable_rss;
 hw_if->set_rss_hash_key = xgbe_set_rss_hash_key;
 hw_if->set_rss_lookup_table = xgbe_set_rss_lookup_table;


 hw_if->disable_ecc_ded = xgbe_disable_ecc_ded;
 hw_if->disable_ecc_sec = xgbe_disable_ecc_sec;


 hw_if->enable_vxlan = xgbe_enable_vxlan;
 hw_if->disable_vxlan = xgbe_disable_vxlan;
 hw_if->set_vxlan_id = xgbe_set_vxlan_id;

 DBGPR("<--xgbe_init_function_ptrs\n");
}
