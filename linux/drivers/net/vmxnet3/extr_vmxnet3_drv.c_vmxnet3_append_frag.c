
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_rx_buf_info {int page; } ;
struct sk_buff {int truesize; int data_len; } ;
struct Vmxnet3_RxCompDesc {int len; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int BUG_ON (int) ;
 scalar_t__ MAX_SKB_FRAGS ;
 scalar_t__ PAGE_SIZE ;
 int __skb_frag_set_page (int *,int ) ;
 int skb_frag_off_set (int *,int ) ;
 int skb_frag_size_set (int *,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
vmxnet3_append_frag(struct sk_buff *skb, struct Vmxnet3_RxCompDesc *rcd,
      struct vmxnet3_rx_buf_info *rbi)
{
 skb_frag_t *frag = skb_shinfo(skb)->frags + skb_shinfo(skb)->nr_frags;

 BUG_ON(skb_shinfo(skb)->nr_frags >= MAX_SKB_FRAGS);

 __skb_frag_set_page(frag, rbi->page);
 skb_frag_off_set(frag, 0);
 skb_frag_size_set(frag, rcd->len);
 skb->data_len += rcd->len;
 skb->truesize += PAGE_SIZE;
 skb_shinfo(skb)->nr_frags++;
}
