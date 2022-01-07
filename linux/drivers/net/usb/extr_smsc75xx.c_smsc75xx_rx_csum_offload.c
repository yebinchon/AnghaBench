
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int ip_summed; int csum; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_COMPLETE ;
 int CHECKSUM_NONE ;
 int NETIF_F_RXCSUM ;
 int RX_CMD_A_LCSM ;
 int RX_CMD_B_CSUM_SHIFT ;
 int ntohs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void smsc75xx_rx_csum_offload(struct usbnet *dev, struct sk_buff *skb,
         u32 rx_cmd_a, u32 rx_cmd_b)
{
 if (!(dev->net->features & NETIF_F_RXCSUM) ||
     unlikely(rx_cmd_a & RX_CMD_A_LCSM)) {
  skb->ip_summed = CHECKSUM_NONE;
 } else {
  skb->csum = ntohs((u16)(rx_cmd_b >> RX_CMD_B_CSUM_SHIFT));
  skb->ip_summed = CHECKSUM_COMPLETE;
 }
}
