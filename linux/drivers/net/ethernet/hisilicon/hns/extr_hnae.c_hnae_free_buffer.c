
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct hnae_ring {int dummy; } ;
struct hnae_desc_cb {scalar_t__ type; int * priv; } ;


 scalar_t__ DESC_TYPE_SKB ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int is_rx_ring (struct hnae_ring*) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void hnae_free_buffer(struct hnae_ring *ring, struct hnae_desc_cb *cb)
{
 if (unlikely(!cb->priv))
  return;

 if (cb->type == DESC_TYPE_SKB)
  dev_kfree_skb_any((struct sk_buff *)cb->priv);
 else if (unlikely(is_rx_ring(ring)))
  put_page((struct page *)cb->priv);

 cb->priv = ((void*)0);
}
