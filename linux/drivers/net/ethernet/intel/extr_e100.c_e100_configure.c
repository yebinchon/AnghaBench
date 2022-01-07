
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ full_duplex; scalar_t__ force_media; } ;
struct nic {int flags; scalar_t__ mac; struct net_device* netdev; scalar_t__ loopback; TYPE_2__ mii; int adaptive_ifs; } ;
struct net_device {int features; } ;
struct config {int byte_count; int rx_fifo_limit; int direct_rx_dma; int standard_tcb; int standard_stat_counter; int rx_discard_short_frames; int tx_underrun_retry; int mii_mode; int pad10; int no_source_addr_insertion; int preamble_length; int ifs; int ip_addr_hi; int pad15_1; int pad15_2; int crs_or_cdt; int fc_delay_hi; int tx_padding; int fc_priority_threshold; int pad18; int full_duplex_pin; int pad20_1; int fc_priority_location; int pad21_1; int full_duplex_force; int rx_save_bad_frames; int promiscuous_mode; int rx_crc_transfer; int multicast_all; int magic_packet_disable; int fc_disable; int mwi_enable; int rx_long_ok; int tno_intr; int rx_d102_mode; int rx_save_overruns; scalar_t__ loopback; int adaptive_ifs; } ;
struct TYPE_3__ {struct config config; } ;
struct cb {int command; TYPE_1__ u; } ;


 int KERN_DEBUG ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXFCS ;
 int cb_config ;
 int cpu_to_le16 (int ) ;
 scalar_t__ e100_phy_supports_mii (struct nic*) ;
 int hw ;
 scalar_t__ mac_82551_10 ;
 scalar_t__ mac_82558_D101_A4 ;
 scalar_t__ mac_82559_D101M ;
 int memset (struct config*,int ,int) ;
 int multicast_all ;
 int netif_printk (struct nic*,int ,int ,struct net_device*,char*,int *) ;
 scalar_t__ netif_running (struct net_device*) ;
 int promiscuous ;
 scalar_t__ unlikely (int) ;
 int wol_magic ;

__attribute__((used)) static int e100_configure(struct nic *nic, struct cb *cb, struct sk_buff *skb)
{
 struct config *config = &cb->u.config;
 u8 *c = (u8 *)config;
 struct net_device *netdev = nic->netdev;

 cb->command = cpu_to_le16(cb_config);

 memset(config, 0, sizeof(struct config));

 config->byte_count = 0x16;
 config->rx_fifo_limit = 0x8;
 config->direct_rx_dma = 0x1;
 config->standard_tcb = 0x1;
 config->standard_stat_counter = 0x1;
 config->rx_discard_short_frames = 0x1;
 config->tx_underrun_retry = 0x3;
 if (e100_phy_supports_mii(nic))
  config->mii_mode = 1;
 config->pad10 = 0x6;
 config->no_source_addr_insertion = 0x1;
 config->preamble_length = 0x2;
 config->ifs = 0x6;
 config->ip_addr_hi = 0xF2;
 config->pad15_1 = 0x1;
 config->pad15_2 = 0x1;
 config->crs_or_cdt = 0x0;
 config->fc_delay_hi = 0x40;
 config->tx_padding = 0x1;
 config->fc_priority_threshold = 0x7;
 config->pad18 = 0x1;
 config->full_duplex_pin = 0x1;
 config->pad20_1 = 0x1F;
 config->fc_priority_location = 0x1;
 config->pad21_1 = 0x5;

 config->adaptive_ifs = nic->adaptive_ifs;
 config->loopback = nic->loopback;

 if (nic->mii.force_media && nic->mii.full_duplex)
  config->full_duplex_force = 0x1;

 if (nic->flags & promiscuous || nic->loopback) {
  config->rx_save_bad_frames = 0x1;
  config->rx_discard_short_frames = 0x0;
  config->promiscuous_mode = 0x1;
 }

 if (unlikely(netdev->features & NETIF_F_RXFCS))
  config->rx_crc_transfer = 0x1;

 if (nic->flags & multicast_all)
  config->multicast_all = 0x1;


 if (netif_running(nic->netdev) || !(nic->flags & wol_magic))
  config->magic_packet_disable = 0x1;

 if (nic->mac >= mac_82558_D101_A4) {
  config->fc_disable = 0x1;
  config->mwi_enable = 0x1;
  config->standard_tcb = 0x0;
  config->rx_long_ok = 0x1;
  if (nic->mac >= mac_82559_D101M) {
   config->tno_intr = 0x1;

   if (nic->mac >= mac_82551_10) {
    config->byte_count = 0x20;
    config->rx_d102_mode = 0x1;
   }
  } else {
   config->standard_stat_counter = 0x0;
  }
 }

 if (netdev->features & NETIF_F_RXALL) {
  config->rx_save_overruns = 0x1;
  config->rx_save_bad_frames = 0x1;
  config->rx_discard_short_frames = 0x0;
 }

 netif_printk(nic, hw, KERN_DEBUG, nic->netdev, "[00-07]=%8ph\n",
       c + 0);
 netif_printk(nic, hw, KERN_DEBUG, nic->netdev, "[08-15]=%8ph\n",
       c + 8);
 netif_printk(nic, hw, KERN_DEBUG, nic->netdev, "[16-23]=%8ph\n",
       c + 16);
 return 0;
}
