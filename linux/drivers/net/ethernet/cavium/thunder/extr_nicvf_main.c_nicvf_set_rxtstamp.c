
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {scalar_t__ data; } ;
struct nicvf {int ptp_clock; int hw_rx_tstamp; } ;
typedef int __be64 ;
struct TYPE_2__ {int hwtstamp; } ;


 int __skb_pull (struct sk_buff*,int) ;
 int be64_to_cpu (int ) ;
 int cavium_ptp_tstamp2time (int ,int ) ;
 int ns_to_ktime (int ) ;
 TYPE_1__* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static inline void nicvf_set_rxtstamp(struct nicvf *nic, struct sk_buff *skb)
{
 u64 ns;

 if (!nic->ptp_clock || !nic->hw_rx_tstamp)
  return;


 ns = cavium_ptp_tstamp2time(nic->ptp_clock,
        be64_to_cpu(*(__be64 *)skb->data));
 skb_hwtstamps(skb)->hwtstamp = ns_to_ktime(ns);

 __skb_pull(skb, 8);
}
