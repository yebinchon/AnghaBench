
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ HNS3_MAX_BD_SIZE ;
 unsigned int hns3_tx_bd_count (int ) ;
 scalar_t__ likely (int) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static unsigned int hns3_nic_bd_num(struct sk_buff *skb)
{
 unsigned int bd_num;
 int i;


 if (likely(skb->len <= HNS3_MAX_BD_SIZE))
  return skb_shinfo(skb)->nr_frags + 1;

 bd_num = hns3_tx_bd_count(skb_headlen(skb));

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  bd_num += hns3_tx_bd_count(skb_frag_size(frag));
 }

 return bd_num;
}
