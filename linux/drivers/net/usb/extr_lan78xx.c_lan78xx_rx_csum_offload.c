
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; int csum; } ;
struct lan78xx_net {TYPE_1__* net; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_COMPLETE ;
 int CHECKSUM_NONE ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int RX_CMD_A_FVTG_ ;
 int RX_CMD_A_ICSM_ ;
 int RX_CMD_B_CSUM_SHIFT_ ;
 int ntohs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void lan78xx_rx_csum_offload(struct lan78xx_net *dev,
        struct sk_buff *skb,
        u32 rx_cmd_a, u32 rx_cmd_b)
{



 if (!(dev->net->features & NETIF_F_RXCSUM) ||
     unlikely(rx_cmd_a & RX_CMD_A_ICSM_) ||
     ((rx_cmd_a & RX_CMD_A_FVTG_) &&
      !(dev->net->features & NETIF_F_HW_VLAN_CTAG_RX))) {
  skb->ip_summed = CHECKSUM_NONE;
 } else {
  skb->csum = ntohs((u16)(rx_cmd_b >> RX_CMD_B_CSUM_SHIFT_));
  skb->ip_summed = CHECKSUM_COMPLETE;
 }
}
