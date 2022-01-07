
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nicvf {scalar_t__ hw_tso; scalar_t__ t88; } ;
struct TYPE_2__ {scalar_t__ nr_frags; scalar_t__ gso_size; } ;


 int MIN_SQ_DESC_PER_PKT_XMIT ;
 scalar_t__ POST_CQE_DESC_COUNT ;
 int nicvf_tso_count_subdescs (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int nicvf_sq_subdesc_required(struct nicvf *nic, struct sk_buff *skb)
{
 int subdesc_cnt = MIN_SQ_DESC_PER_PKT_XMIT;

 if (skb_shinfo(skb)->gso_size && !nic->hw_tso) {
  subdesc_cnt = nicvf_tso_count_subdescs(skb);
  return subdesc_cnt;
 }


 if (nic->t88 && nic->hw_tso && skb_shinfo(skb)->gso_size)
  subdesc_cnt += POST_CQE_DESC_COUNT;

 if (skb_shinfo(skb)->nr_frags)
  subdesc_cnt += skb_shinfo(skb)->nr_frags;

 return subdesc_cnt;
}
