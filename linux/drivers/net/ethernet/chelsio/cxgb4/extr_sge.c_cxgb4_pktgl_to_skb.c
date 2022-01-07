
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; unsigned int data_len; int truesize; } ;
struct pkt_gl {unsigned int tot_len; int va; } ;


 unsigned int RX_COPY_THRES ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int copy_frags (struct sk_buff*,struct pkt_gl const*,unsigned int) ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int skb_copy_to_linear_data (struct sk_buff*,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *cxgb4_pktgl_to_skb(const struct pkt_gl *gl,
       unsigned int skb_len, unsigned int pull_len)
{
 struct sk_buff *skb;






 if (gl->tot_len <= RX_COPY_THRES) {
  skb = dev_alloc_skb(gl->tot_len);
  if (unlikely(!skb))
   goto out;
  __skb_put(skb, gl->tot_len);
  skb_copy_to_linear_data(skb, gl->va, gl->tot_len);
 } else {
  skb = dev_alloc_skb(skb_len);
  if (unlikely(!skb))
   goto out;
  __skb_put(skb, pull_len);
  skb_copy_to_linear_data(skb, gl->va, pull_len);

  copy_frags(skb, gl, pull_len);
  skb->len = gl->tot_len;
  skb->data_len = skb->len - pull_len;
  skb->truesize += skb->data_len;
 }
out: return skb;
}
