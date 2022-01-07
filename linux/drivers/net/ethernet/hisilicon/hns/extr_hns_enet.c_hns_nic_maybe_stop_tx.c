
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hnae_ring {int max_desc_num_per_pkt; } ;
struct TYPE_2__ {int nr_frags; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ring_space (struct hnae_ring*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns_nic_maybe_stop_tx(
 struct sk_buff **out_skb, int *bnum, struct hnae_ring *ring)
{
 struct sk_buff *skb = *out_skb;
 struct sk_buff *new_skb = ((void*)0);
 int buf_num;


 buf_num = skb_shinfo(skb)->nr_frags + 1;

 if (unlikely(buf_num > ring->max_desc_num_per_pkt)) {
  if (ring_space(ring) < 1)
   return -EBUSY;

  new_skb = skb_copy(skb, GFP_ATOMIC);
  if (!new_skb)
   return -ENOMEM;

  dev_kfree_skb_any(skb);
  *out_skb = new_skb;
  buf_num = 1;
 } else if (buf_num > ring_space(ring)) {
  return -EBUSY;
 }

 *bnum = buf_num;
 return 0;
}
