
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int ip_summed; } ;
struct net_device {int features; } ;
struct TYPE_2__ {int csum_errors; } ;
struct hinic_rxq {TYPE_1__ rxq_stats; struct net_device* netdev; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int CSUM_ERR ;
 int HINIC_RQ_CQE_STATUS_GET (int,int ) ;
 int HINIC_RX_CSUM_HW_CHECK_NONE ;
 int HINIC_RX_CSUM_IPSU_OTHER_ERR ;
 int NETIF_F_RXCSUM ;

__attribute__((used)) static void rx_csum(struct hinic_rxq *rxq, u32 status,
      struct sk_buff *skb)
{
 struct net_device *netdev = rxq->netdev;
 u32 csum_err;

 csum_err = HINIC_RQ_CQE_STATUS_GET(status, CSUM_ERR);

 if (!(netdev->features & NETIF_F_RXCSUM))
  return;

 if (!csum_err) {
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else {
  if (!(csum_err & (HINIC_RX_CSUM_HW_CHECK_NONE |
   HINIC_RX_CSUM_IPSU_OTHER_ERR)))
   rxq->rxq_stats.csum_errors++;
  skb->ip_summed = CHECKSUM_NONE;
 }
}
