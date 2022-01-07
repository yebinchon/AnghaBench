
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; scalar_t__ csum; } ;
struct mvneta_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int MVNETA_RXD_L3_IP4 ;
 int MVNETA_RXD_L4_CSUM_OK ;
 int NETIF_F_RXCSUM ;

__attribute__((used)) static void mvneta_rx_csum(struct mvneta_port *pp, u32 status,
      struct sk_buff *skb)
{
 if ((pp->dev->features & NETIF_F_RXCSUM) &&
     (status & MVNETA_RXD_L3_IP4) &&
     (status & MVNETA_RXD_L4_CSUM_OK)) {
  skb->csum = 0;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
  return;
 }

 skb->ip_summed = CHECKSUM_NONE;
}
