
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hnae_ring {int max_desc_num_per_pkt; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int BD_MAX_SEND_SIZE ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ring_space (struct hnae_ring*) ;
 struct sk_buff* skb_copy (struct sk_buff*,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns_nic_maybe_stop_tso(
 struct sk_buff **out_skb, int *bnum, struct hnae_ring *ring)
{
 int i;
 int size;
 int buf_num;
 int frag_num;
 struct sk_buff *skb = *out_skb;
 struct sk_buff *new_skb = ((void*)0);
 skb_frag_t *frag;

 size = skb_headlen(skb);
 buf_num = (size + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;

 frag_num = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < frag_num; i++) {
  frag = &skb_shinfo(skb)->frags[i];
  size = skb_frag_size(frag);
  buf_num += (size + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;
 }

 if (unlikely(buf_num > ring->max_desc_num_per_pkt)) {
  buf_num = (skb->len + BD_MAX_SEND_SIZE - 1) / BD_MAX_SEND_SIZE;
  if (ring_space(ring) < buf_num)
   return -EBUSY;

  new_skb = skb_copy(skb, GFP_ATOMIC);
  if (!new_skb)
   return -ENOMEM;
  dev_kfree_skb_any(skb);
  *out_skb = new_skb;

 } else if (ring_space(ring) < buf_num) {
  return -EBUSY;
 }

 *bnum = buf_num;
 return 0;
}
