
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_hw_ops {int set_rss_lookup_table; int set_rss_hash_key; int disable_rss; int enable_rss; int read_mmc_stats; int rx_mmc_int; int tx_mmc_int; int config_pblx8; int get_tx_pbl_val; int config_tx_pbl_val; int get_rx_pbl_val; int config_rx_pbl_val; int config_osp_mode; int config_tsf_mode; int config_rsf_mode; int config_tx_threshold; int config_rx_threshold; int riwt_to_usec; int usec_to_riwt; int config_tx_coalesce; int config_rx_coalesce; int update_vlan_hash_table; int disable_rx_vlan_filtering; int enable_rx_vlan_filtering; int disable_rx_vlan_stripping; int enable_rx_vlan_stripping; int config_rx_flow_control; int config_tx_flow_control; int tx_start_xmit; int is_context_desc; int is_last_desc; int rx_desc_reset; int tx_desc_reset; int rx_desc_init; int tx_desc_init; int set_xlgmii_100000_speed; int set_xlgmii_50000_speed; int set_xlgmii_40000_speed; int set_xlgmii_25000_speed; int disable_rx_csum; int enable_rx_csum; int config_rx_mode; int set_mac_address; int disable_int; int enable_int; int dev_read; int dev_xmit; int disable_rx; int enable_rx; int disable_tx; int enable_tx; int tx_complete; int exit; int init; } ;


 int xlgmac_config_osp_mode ;
 int xlgmac_config_pblx8 ;
 int xlgmac_config_rsf_mode ;
 int xlgmac_config_rx_coalesce ;
 int xlgmac_config_rx_flow_control ;
 int xlgmac_config_rx_mode ;
 int xlgmac_config_rx_pbl_val ;
 int xlgmac_config_rx_threshold ;
 int xlgmac_config_tsf_mode ;
 int xlgmac_config_tx_coalesce ;
 int xlgmac_config_tx_flow_control ;
 int xlgmac_config_tx_pbl_val ;
 int xlgmac_config_tx_threshold ;
 int xlgmac_dev_read ;
 int xlgmac_dev_xmit ;
 int xlgmac_disable_int ;
 int xlgmac_disable_rss ;
 int xlgmac_disable_rx ;
 int xlgmac_disable_rx_csum ;
 int xlgmac_disable_rx_vlan_filtering ;
 int xlgmac_disable_rx_vlan_stripping ;
 int xlgmac_disable_tx ;
 int xlgmac_enable_int ;
 int xlgmac_enable_rss ;
 int xlgmac_enable_rx ;
 int xlgmac_enable_rx_csum ;
 int xlgmac_enable_rx_vlan_filtering ;
 int xlgmac_enable_rx_vlan_stripping ;
 int xlgmac_enable_tx ;
 int xlgmac_get_rx_pbl_val ;
 int xlgmac_get_tx_pbl_val ;
 int xlgmac_hw_exit ;
 int xlgmac_hw_init ;
 int xlgmac_is_context_desc ;
 int xlgmac_is_last_desc ;
 int xlgmac_read_mmc_stats ;
 int xlgmac_riwt_to_usec ;
 int xlgmac_rx_desc_init ;
 int xlgmac_rx_desc_reset ;
 int xlgmac_rx_mmc_int ;
 int xlgmac_set_mac_address ;
 int xlgmac_set_rss_hash_key ;
 int xlgmac_set_rss_lookup_table ;
 int xlgmac_set_xlgmii_100000_speed ;
 int xlgmac_set_xlgmii_25000_speed ;
 int xlgmac_set_xlgmii_40000_speed ;
 int xlgmac_set_xlgmii_50000_speed ;
 int xlgmac_tx_complete ;
 int xlgmac_tx_desc_init ;
 int xlgmac_tx_desc_reset ;
 int xlgmac_tx_mmc_int ;
 int xlgmac_tx_start_xmit ;
 int xlgmac_update_vlan_hash_table ;
 int xlgmac_usec_to_riwt ;

void xlgmac_init_hw_ops(struct xlgmac_hw_ops *hw_ops)
{
 hw_ops->init = xlgmac_hw_init;
 hw_ops->exit = xlgmac_hw_exit;

 hw_ops->tx_complete = xlgmac_tx_complete;

 hw_ops->enable_tx = xlgmac_enable_tx;
 hw_ops->disable_tx = xlgmac_disable_tx;
 hw_ops->enable_rx = xlgmac_enable_rx;
 hw_ops->disable_rx = xlgmac_disable_rx;

 hw_ops->dev_xmit = xlgmac_dev_xmit;
 hw_ops->dev_read = xlgmac_dev_read;
 hw_ops->enable_int = xlgmac_enable_int;
 hw_ops->disable_int = xlgmac_disable_int;

 hw_ops->set_mac_address = xlgmac_set_mac_address;
 hw_ops->config_rx_mode = xlgmac_config_rx_mode;
 hw_ops->enable_rx_csum = xlgmac_enable_rx_csum;
 hw_ops->disable_rx_csum = xlgmac_disable_rx_csum;


 hw_ops->set_xlgmii_25000_speed = xlgmac_set_xlgmii_25000_speed;
 hw_ops->set_xlgmii_40000_speed = xlgmac_set_xlgmii_40000_speed;
 hw_ops->set_xlgmii_50000_speed = xlgmac_set_xlgmii_50000_speed;
 hw_ops->set_xlgmii_100000_speed = xlgmac_set_xlgmii_100000_speed;


 hw_ops->tx_desc_init = xlgmac_tx_desc_init;
 hw_ops->rx_desc_init = xlgmac_rx_desc_init;
 hw_ops->tx_desc_reset = xlgmac_tx_desc_reset;
 hw_ops->rx_desc_reset = xlgmac_rx_desc_reset;
 hw_ops->is_last_desc = xlgmac_is_last_desc;
 hw_ops->is_context_desc = xlgmac_is_context_desc;
 hw_ops->tx_start_xmit = xlgmac_tx_start_xmit;


 hw_ops->config_tx_flow_control = xlgmac_config_tx_flow_control;
 hw_ops->config_rx_flow_control = xlgmac_config_rx_flow_control;


 hw_ops->enable_rx_vlan_stripping = xlgmac_enable_rx_vlan_stripping;
 hw_ops->disable_rx_vlan_stripping = xlgmac_disable_rx_vlan_stripping;
 hw_ops->enable_rx_vlan_filtering = xlgmac_enable_rx_vlan_filtering;
 hw_ops->disable_rx_vlan_filtering = xlgmac_disable_rx_vlan_filtering;
 hw_ops->update_vlan_hash_table = xlgmac_update_vlan_hash_table;


 hw_ops->config_rx_coalesce = xlgmac_config_rx_coalesce;
 hw_ops->config_tx_coalesce = xlgmac_config_tx_coalesce;
 hw_ops->usec_to_riwt = xlgmac_usec_to_riwt;
 hw_ops->riwt_to_usec = xlgmac_riwt_to_usec;


 hw_ops->config_rx_threshold = xlgmac_config_rx_threshold;
 hw_ops->config_tx_threshold = xlgmac_config_tx_threshold;


 hw_ops->config_rsf_mode = xlgmac_config_rsf_mode;
 hw_ops->config_tsf_mode = xlgmac_config_tsf_mode;


 hw_ops->config_osp_mode = xlgmac_config_osp_mode;


 hw_ops->config_rx_pbl_val = xlgmac_config_rx_pbl_val;
 hw_ops->get_rx_pbl_val = xlgmac_get_rx_pbl_val;
 hw_ops->config_tx_pbl_val = xlgmac_config_tx_pbl_val;
 hw_ops->get_tx_pbl_val = xlgmac_get_tx_pbl_val;
 hw_ops->config_pblx8 = xlgmac_config_pblx8;


 hw_ops->tx_mmc_int = xlgmac_tx_mmc_int;
 hw_ops->rx_mmc_int = xlgmac_rx_mmc_int;
 hw_ops->read_mmc_stats = xlgmac_read_mmc_stats;


 hw_ops->enable_rss = xlgmac_enable_rss;
 hw_ops->disable_rss = xlgmac_disable_rss;
 hw_ops->set_rss_hash_key = xlgmac_set_rss_hash_key;
 hw_ops->set_rss_lookup_table = xlgmac_set_rss_lookup_table;
}
