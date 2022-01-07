
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ code; scalar_t__ len; } ;
union mgmt_port_ring_entry {void* d64; TYPE_1__ s; } ;
struct TYPE_6__ {int ircnt; } ;
union cvmx_mixx_ircnt {scalar_t__ u64; TYPE_3__ s; } ;
typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {scalar_t__ len; int protocol; scalar_t__ data; } ;
struct octeon_mgmt {scalar_t__ mix; scalar_t__ has_rx_tstamp; struct net_device* netdev; } ;
struct TYPE_5__ {int rx_errors; int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ stats; } ;


 int GFP_ATOMIC ;
 scalar_t__ MIX_IRCNT ;
 scalar_t__ RING_ENTRY_CODE_DONE ;
 scalar_t__ RING_ENTRY_CODE_MORE ;
 int __skb_pull (struct sk_buff*,int) ;
 int cvmx_write_csr (scalar_t__,scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int ns_to_ktime (int ) ;
 void* octeon_mgmt_dequeue_rx_buffer (struct octeon_mgmt*,struct sk_buff**) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,int ,scalar_t__) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,scalar_t__,int ) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int octeon_mgmt_receive_one(struct octeon_mgmt *p)
{
 struct net_device *netdev = p->netdev;
 union cvmx_mixx_ircnt mix_ircnt;
 union mgmt_port_ring_entry re;
 struct sk_buff *skb;
 struct sk_buff *skb2;
 struct sk_buff *skb_new;
 union mgmt_port_ring_entry re2;
 int rc = 1;


 re.d64 = octeon_mgmt_dequeue_rx_buffer(p, &skb);
 if (likely(re.s.code == RING_ENTRY_CODE_DONE)) {

  skb_put(skb, re.s.len);
good:

  if (p->has_rx_tstamp) {

   u64 ns = *(u64 *)skb->data;
   struct skb_shared_hwtstamps *ts;
   ts = skb_hwtstamps(skb);
   ts->hwtstamp = ns_to_ktime(ns);
   __skb_pull(skb, 8);
  }
  skb->protocol = eth_type_trans(skb, netdev);
  netdev->stats.rx_packets++;
  netdev->stats.rx_bytes += skb->len;
  netif_receive_skb(skb);
  rc = 0;
 } else if (re.s.code == RING_ENTRY_CODE_MORE) {







  skb_put(skb, re.s.len);
  do {
   re2.d64 = octeon_mgmt_dequeue_rx_buffer(p, &skb2);
   if (re2.s.code != RING_ENTRY_CODE_MORE
    && re2.s.code != RING_ENTRY_CODE_DONE)
    goto split_error;
   skb_put(skb2, re2.s.len);
   skb_new = skb_copy_expand(skb, 0, skb2->len,
        GFP_ATOMIC);
   if (!skb_new)
    goto split_error;
   if (skb_copy_bits(skb2, 0, skb_tail_pointer(skb_new),
       skb2->len))
    goto split_error;
   skb_put(skb_new, skb2->len);
   dev_kfree_skb_any(skb);
   dev_kfree_skb_any(skb2);
   skb = skb_new;
  } while (re2.s.code == RING_ENTRY_CODE_MORE);
  goto good;
 } else {

  dev_kfree_skb_any(skb);



 }
 goto done;
split_error:

 dev_kfree_skb_any(skb);
 dev_kfree_skb_any(skb2);
 while (re2.s.code == RING_ENTRY_CODE_MORE) {
  re2.d64 = octeon_mgmt_dequeue_rx_buffer(p, &skb2);
  dev_kfree_skb_any(skb2);
 }
 netdev->stats.rx_errors++;

done:

 mix_ircnt.u64 = 0;
 mix_ircnt.s.ircnt = 1;
 cvmx_write_csr(p->mix + MIX_IRCNT, mix_ircnt.u64);
 return rc;
}
