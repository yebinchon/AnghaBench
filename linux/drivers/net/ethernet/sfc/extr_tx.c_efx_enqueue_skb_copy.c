
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {unsigned int len; } ;
struct efx_tx_queue {int insert_count; } ;
struct efx_tx_buffer {unsigned int len; int flags; struct sk_buff* skb; } ;


 int EFX_TX_BUF_SKB ;
 unsigned int EFX_TX_CB_SIZE ;
 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int EFX_WARN_ON_PARANOID (int) ;
 int ENOMEM ;
 int * efx_tx_get_copy_buffer (struct efx_tx_queue*,struct efx_tx_buffer*) ;
 struct efx_tx_buffer* efx_tx_queue_get_insert_buffer (struct efx_tx_queue*) ;
 int skb_copy_bits (struct sk_buff*,int ,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int efx_enqueue_skb_copy(struct efx_tx_queue *tx_queue,
    struct sk_buff *skb)
{
 unsigned int copy_len = skb->len;
 struct efx_tx_buffer *buffer;
 u8 *copy_buffer;
 int rc;

 EFX_WARN_ON_ONCE_PARANOID(copy_len > EFX_TX_CB_SIZE);

 buffer = efx_tx_queue_get_insert_buffer(tx_queue);

 copy_buffer = efx_tx_get_copy_buffer(tx_queue, buffer);
 if (unlikely(!copy_buffer))
  return -ENOMEM;

 rc = skb_copy_bits(skb, 0, copy_buffer, copy_len);
 EFX_WARN_ON_PARANOID(rc);
 buffer->len = copy_len;

 buffer->skb = skb;
 buffer->flags = EFX_TX_BUF_SKB;

 ++tx_queue->insert_count;
 return rc;
}
