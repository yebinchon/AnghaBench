
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ ip_summed; scalar_t__ encapsulation; } ;
struct be_tx_stats {int tx_pkts; int tx_vxlan_offload_pkts; int sync; int tx_bytes; int tx_reqs; } ;
struct be_tx_obj {int dummy; } ;
struct TYPE_2__ {scalar_t__ gso_segs; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int be_gso_hdr_len (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct be_tx_stats* tx_stats (struct be_tx_obj*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static void be_tx_stats_update(struct be_tx_obj *txo, struct sk_buff *skb)
{
 struct be_tx_stats *stats = tx_stats(txo);
 u32 tx_pkts = skb_shinfo(skb)->gso_segs ? : 1;

 u32 dup_hdr_len = tx_pkts > 1 ? be_gso_hdr_len(skb) * (tx_pkts - 1) : 0;

 u64_stats_update_begin(&stats->sync);
 stats->tx_reqs++;
 stats->tx_bytes += skb->len + dup_hdr_len;
 stats->tx_pkts += tx_pkts;
 if (skb->encapsulation && skb->ip_summed == CHECKSUM_PARTIAL)
  stats->tx_vxlan_offload_pkts += tx_pkts;
 u64_stats_update_end(&stats->sync);
}
