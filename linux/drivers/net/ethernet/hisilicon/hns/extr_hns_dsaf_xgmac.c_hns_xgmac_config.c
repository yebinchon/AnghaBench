
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_params {int dev; int vaddr; int mac_mode; int mac_id; } ;
struct mac_driver {int update_stats; int get_strings; int get_regs_count; int get_sset_count; int get_ethtool_stats; int get_regs; int get_link_status; int get_pause_enable; int get_info; int * autoneg_stat; int mac_pausefrm_cfg; int config_max_frame_length; int set_tx_auto_pause_frames; int * adjust_link; int mac_free; int set_rx_ignore_pause_frames; int * config_half_duplex; int config_pad_and_crc; int * config_loopback; int * set_an_mode; int set_mac_addr; struct hns_mac_cb* mac_cb; int dev; int io_base; int mac_mode; int mac_id; int mac_disable; int mac_enable; int mac_init; } ;
struct hns_mac_cb {int dev; } ;


 int GFP_KERNEL ;
 struct mac_driver* devm_kzalloc (int ,int,int ) ;
 int hns_xgmac_config_max_frame_length ;
 int hns_xgmac_config_pad_and_crc ;
 int hns_xgmac_disable ;
 int hns_xgmac_enable ;
 int hns_xgmac_free ;
 int hns_xgmac_get_info ;
 int hns_xgmac_get_link_status ;
 int hns_xgmac_get_pausefrm_cfg ;
 int hns_xgmac_get_regs ;
 int hns_xgmac_get_regs_count ;
 int hns_xgmac_get_sset_count ;
 int hns_xgmac_get_stats ;
 int hns_xgmac_get_strings ;
 int hns_xgmac_init ;
 int hns_xgmac_pausefrm_cfg ;
 int hns_xgmac_set_pausefrm_mac_addr ;
 int hns_xgmac_set_rx_ignore_pause_frames ;
 int hns_xgmac_set_tx_auto_pause_frames ;
 int hns_xgmac_update_stats ;

void *hns_xgmac_config(struct hns_mac_cb *mac_cb, struct mac_params *mac_param)
{
 struct mac_driver *mac_drv;

 mac_drv = devm_kzalloc(mac_cb->dev, sizeof(*mac_drv), GFP_KERNEL);
 if (!mac_drv)
  return ((void*)0);

 mac_drv->mac_init = hns_xgmac_init;
 mac_drv->mac_enable = hns_xgmac_enable;
 mac_drv->mac_disable = hns_xgmac_disable;

 mac_drv->mac_id = mac_param->mac_id;
 mac_drv->mac_mode = mac_param->mac_mode;
 mac_drv->io_base = mac_param->vaddr;
 mac_drv->dev = mac_param->dev;
 mac_drv->mac_cb = mac_cb;

 mac_drv->set_mac_addr = hns_xgmac_set_pausefrm_mac_addr;
 mac_drv->set_an_mode = ((void*)0);
 mac_drv->config_loopback = ((void*)0);
 mac_drv->config_pad_and_crc = hns_xgmac_config_pad_and_crc;
 mac_drv->config_half_duplex = ((void*)0);
 mac_drv->set_rx_ignore_pause_frames =
  hns_xgmac_set_rx_ignore_pause_frames;
 mac_drv->mac_free = hns_xgmac_free;
 mac_drv->adjust_link = ((void*)0);
 mac_drv->set_tx_auto_pause_frames = hns_xgmac_set_tx_auto_pause_frames;
 mac_drv->config_max_frame_length = hns_xgmac_config_max_frame_length;
 mac_drv->mac_pausefrm_cfg = hns_xgmac_pausefrm_cfg;
 mac_drv->autoneg_stat = ((void*)0);
 mac_drv->get_info = hns_xgmac_get_info;
 mac_drv->get_pause_enable = hns_xgmac_get_pausefrm_cfg;
 mac_drv->get_link_status = hns_xgmac_get_link_status;
 mac_drv->get_regs = hns_xgmac_get_regs;
 mac_drv->get_ethtool_stats = hns_xgmac_get_stats;
 mac_drv->get_sset_count = hns_xgmac_get_sset_count;
 mac_drv->get_regs_count = hns_xgmac_get_regs_count;
 mac_drv->get_strings = hns_xgmac_get_strings;
 mac_drv->update_stats = hns_xgmac_update_stats;

 return (void *)mac_drv;
}
