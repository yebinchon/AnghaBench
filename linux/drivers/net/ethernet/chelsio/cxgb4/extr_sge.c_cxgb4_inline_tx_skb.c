
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sk_buff {int len; int data_len; } ;
struct sge_txq {void* desc; scalar_t__ stat; } ;


 scalar_t__* PTR_ALIGN (void*,int) ;
 scalar_t__ likely (int) ;
 int skb_copy_bits (struct sk_buff const*,int,void*,int) ;
 int skb_copy_from_linear_data (struct sk_buff const*,void*,int) ;

void cxgb4_inline_tx_skb(const struct sk_buff *skb,
    const struct sge_txq *q, void *pos)
{
 int left = (void *)q->stat - pos;
 u64 *p;

 if (likely(skb->len <= left)) {
  if (likely(!skb->data_len))
   skb_copy_from_linear_data(skb, pos, skb->len);
  else
   skb_copy_bits(skb, 0, pos, skb->len);
  pos += skb->len;
 } else {
  skb_copy_bits(skb, 0, pos, left);
  skb_copy_bits(skb, left, q->desc, skb->len - left);
  pos = (void *)q->desc + (skb->len - left);
 }


 p = PTR_ALIGN(pos, 8);
 if ((uintptr_t)p & 8)
  *p = 0;
}
