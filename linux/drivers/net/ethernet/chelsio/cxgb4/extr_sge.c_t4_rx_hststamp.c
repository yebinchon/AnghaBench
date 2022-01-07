
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int rx_drops; } ;
struct sge_eth_rxq {TYPE_2__ stats; } ;
struct TYPE_3__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;
typedef int __be64 ;


 scalar_t__ CPL_RX_MPS_PKT ;
 int RX_NON_PTP_PKT ;
 int RX_PTP_PKT_ERR ;
 int is_t4 (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int t4_systim_to_hwstamp (struct adapter*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int t4_rx_hststamp(struct adapter *adapter, const __be64 *rsp,
     struct sge_eth_rxq *rxq, struct sk_buff *skb)
{
 int ret;

 if (unlikely((*(u8 *)rsp == CPL_RX_MPS_PKT) &&
       !is_t4(adapter->params.chip))) {
  ret = t4_systim_to_hwstamp(adapter, skb);
  if (ret == RX_PTP_PKT_ERR) {
   kfree_skb(skb);
   rxq->stats.rx_drops++;
  }
  return ret;
 }
 return RX_NON_PTP_PKT;
}
