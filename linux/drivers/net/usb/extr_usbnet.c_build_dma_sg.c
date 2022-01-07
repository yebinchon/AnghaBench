
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {unsigned int num_sgs; unsigned int transfer_buffer_length; int * sg; } ;
struct sk_buff {int data; } ;
struct scatterlist {int dummy; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int * kmalloc_array (unsigned int,int,int ) ;
 int sg_init_table (int *,int) ;
 int sg_set_buf (int *,int ,scalar_t__) ;
 int sg_set_page (int *,int ,scalar_t__,int ) ;
 int skb_frag_off (int *) ;
 int skb_frag_page (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 scalar_t__ skb_headlen (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int build_dma_sg(const struct sk_buff *skb, struct urb *urb)
{
 unsigned num_sgs, total_len = 0;
 int i, s = 0;

 num_sgs = skb_shinfo(skb)->nr_frags + 1;
 if (num_sgs == 1)
  return 0;


 urb->sg = kmalloc_array(num_sgs + 1, sizeof(struct scatterlist),
    GFP_ATOMIC);
 if (!urb->sg)
  return -ENOMEM;

 urb->num_sgs = num_sgs;
 sg_init_table(urb->sg, urb->num_sgs + 1);

 sg_set_buf(&urb->sg[s++], skb->data, skb_headlen(skb));
 total_len += skb_headlen(skb);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *f = &skb_shinfo(skb)->frags[i];

  total_len += skb_frag_size(f);
  sg_set_page(&urb->sg[i + s], skb_frag_page(f), skb_frag_size(f),
       skb_frag_off(f));
 }
 urb->transfer_buffer_length = total_len;

 return 1;
}
