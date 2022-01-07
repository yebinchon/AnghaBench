
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int MTK_TX_DMA_BUF_LEN ;
 int skb_frag_size (int *) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline int mtk_cal_txd_req(struct sk_buff *skb)
{
 int i, nfrags;
 skb_frag_t *frag;

 nfrags = 1;
 if (skb_is_gso(skb)) {
  for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
   frag = &skb_shinfo(skb)->frags[i];
   nfrags += DIV_ROUND_UP(skb_frag_size(frag),
      MTK_TX_DMA_BUF_LEN);
  }
 } else {
  nfrags += skb_shinfo(skb)->nr_frags;
 }

 return nfrags;
}
