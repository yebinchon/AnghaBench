
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_params {int dev; int vaddr; int mac_mode; int mac_id; } ;
struct mac_driver {int wait_fifo_clean; int set_promiscuous; int update_stats; int get_strings; int get_sset_count; int get_ethtool_stats; int get_regs_count; int get_regs; int get_link_status; int get_pause_enable; int autoneg_stat; int get_info; int set_rx_ignore_pause_frames; int config_half_duplex; int config_pad_and_crc; int config_loopback; int set_an_mode; int set_mac_addr; struct hns_mac_cb* mac_cb; int dev; int io_base; int mac_mode; int mac_id; int mac_pausefrm_cfg; int config_max_frame_length; int set_tx_auto_pause_frames; int need_adjust_link; int adjust_link; int mac_free; int mac_disable; int mac_enable; int mac_init; } ;
struct hns_mac_cb {int dev; } ;


 int GFP_KERNEL ;
 struct mac_driver* devm_kzalloc (int ,int,int ) ;
 int hns_gmac_adjust_link ;
 int hns_gmac_autoneg_stat ;
 int hns_gmac_config_an_mode ;
 int hns_gmac_config_loopback ;
 int hns_gmac_config_max_frame_length ;
 int hns_gmac_config_pad_and_crc ;
 int hns_gmac_disable ;
 int hns_gmac_enable ;
 int hns_gmac_free ;
 int hns_gmac_get_info ;
 int hns_gmac_get_link_status ;
 int hns_gmac_get_pausefrm_cfg ;
 int hns_gmac_get_regs ;
 int hns_gmac_get_regs_count ;
 int hns_gmac_get_sset_count ;
 int hns_gmac_get_stats ;
 int hns_gmac_get_strings ;
 int hns_gmac_init ;
 int hns_gmac_need_adjust_link ;
 int hns_gmac_pause_frm_cfg ;
 int hns_gmac_set_duplex_type ;
 int hns_gmac_set_mac_addr ;
 int hns_gmac_set_promisc ;
 int hns_gmac_set_rx_auto_pause_frames ;
 int hns_gmac_set_tx_auto_pause_frames ;
 int hns_gmac_update_stats ;
 int hns_gmac_wait_fifo_clean ;

void *hns_gmac_config(struct hns_mac_cb *mac_cb, struct mac_params *mac_param)
{
 struct mac_driver *mac_drv;

 mac_drv = devm_kzalloc(mac_cb->dev, sizeof(*mac_drv), GFP_KERNEL);
 if (!mac_drv)
  return ((void*)0);

 mac_drv->mac_init = hns_gmac_init;
 mac_drv->mac_enable = hns_gmac_enable;
 mac_drv->mac_disable = hns_gmac_disable;
 mac_drv->mac_free = hns_gmac_free;
 mac_drv->adjust_link = hns_gmac_adjust_link;
 mac_drv->need_adjust_link = hns_gmac_need_adjust_link;
 mac_drv->set_tx_auto_pause_frames = hns_gmac_set_tx_auto_pause_frames;
 mac_drv->config_max_frame_length = hns_gmac_config_max_frame_length;
 mac_drv->mac_pausefrm_cfg = hns_gmac_pause_frm_cfg;

 mac_drv->mac_id = mac_param->mac_id;
 mac_drv->mac_mode = mac_param->mac_mode;
 mac_drv->io_base = mac_param->vaddr;
 mac_drv->dev = mac_param->dev;
 mac_drv->mac_cb = mac_cb;

 mac_drv->set_mac_addr = hns_gmac_set_mac_addr;
 mac_drv->set_an_mode = hns_gmac_config_an_mode;
 mac_drv->config_loopback = hns_gmac_config_loopback;
 mac_drv->config_pad_and_crc = hns_gmac_config_pad_and_crc;
 mac_drv->config_half_duplex = hns_gmac_set_duplex_type;
 mac_drv->set_rx_ignore_pause_frames = hns_gmac_set_rx_auto_pause_frames;
 mac_drv->get_info = hns_gmac_get_info;
 mac_drv->autoneg_stat = hns_gmac_autoneg_stat;
 mac_drv->get_pause_enable = hns_gmac_get_pausefrm_cfg;
 mac_drv->get_link_status = hns_gmac_get_link_status;
 mac_drv->get_regs = hns_gmac_get_regs;
 mac_drv->get_regs_count = hns_gmac_get_regs_count;
 mac_drv->get_ethtool_stats = hns_gmac_get_stats;
 mac_drv->get_sset_count = hns_gmac_get_sset_count;
 mac_drv->get_strings = hns_gmac_get_strings;
 mac_drv->update_stats = hns_gmac_update_stats;
 mac_drv->set_promiscuous = hns_gmac_set_promisc;
 mac_drv->wait_fifo_clean = hns_gmac_wait_fifo_clean;

 return (void *)mac_drv;
}
