
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct sky2_port {size_t rx_next; size_t port; TYPE_4__* hw; TYPE_3__* netdev; TYPE_1__* rx_ring; } ;
struct sk_buff {int csum; int ip_summed; } ;
struct TYPE_8__ {int flags; TYPE_2__* pdev; } ;
struct TYPE_7__ {int features; int name; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;


 int BMU_DIS_RX_CHKSUM ;
 int BUG_ON (int) ;
 int CHECKSUM_COMPLETE ;
 int NETIF_F_RXCSUM ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int SKY2_HW_NEW_LE ;
 int dev_notice (int *,char*,int ,int) ;
 int le16_to_cpu (int) ;
 scalar_t__ likely (int) ;
 int * rxqaddr ;
 int sky2_write32 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void sky2_rx_checksum(struct sky2_port *sky2, u32 status)
{

 BUG_ON(sky2->hw->flags & SKY2_HW_NEW_LE);






 if (likely((u16)(status >> 16) == (u16)status)) {
  struct sk_buff *skb = sky2->rx_ring[sky2->rx_next].skb;
  skb->ip_summed = CHECKSUM_COMPLETE;
  skb->csum = le16_to_cpu(status);
 } else {
  dev_notice(&sky2->hw->pdev->dev,
      "%s: receive checksum problem (status = %#x)\n",
      sky2->netdev->name, status);





  sky2->netdev->features &= ~NETIF_F_RXCSUM;
  sky2_write32(sky2->hw, Q_ADDR(rxqaddr[sky2->port], Q_CSR),
        BMU_DIS_RX_CHKSUM);
 }
}
