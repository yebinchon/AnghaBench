
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {unsigned int len; } ;
struct ef4_tx_queue {unsigned int tx_min_size; int insert_count; } ;
struct ef4_tx_buffer {unsigned int len; int flags; struct sk_buff* skb; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 int EF4_TX_BUF_SKB ;
 unsigned int EF4_TX_CB_SIZE ;
 int EF4_WARN_ON_PARANOID (int) ;
 int ENOMEM ;
 int * ef4_tx_get_copy_buffer (struct ef4_tx_queue*,struct ef4_tx_buffer*) ;
 struct ef4_tx_buffer* ef4_tx_queue_get_insert_buffer (struct ef4_tx_queue*) ;
 int memset (int *,int ,unsigned int) ;
 int skb_copy_bits (struct sk_buff*,int ,int *,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ef4_enqueue_skb_copy(struct ef4_tx_queue *tx_queue,
    struct sk_buff *skb)
{
 unsigned int min_len = tx_queue->tx_min_size;
 unsigned int copy_len = skb->len;
 struct ef4_tx_buffer *buffer;
 u8 *copy_buffer;
 int rc;

 EF4_BUG_ON_PARANOID(copy_len > EF4_TX_CB_SIZE);

 buffer = ef4_tx_queue_get_insert_buffer(tx_queue);

 copy_buffer = ef4_tx_get_copy_buffer(tx_queue, buffer);
 if (unlikely(!copy_buffer))
  return -ENOMEM;

 rc = skb_copy_bits(skb, 0, copy_buffer, copy_len);
 EF4_WARN_ON_PARANOID(rc);
 if (unlikely(copy_len < min_len)) {
  memset(copy_buffer + copy_len, 0, min_len - copy_len);
  buffer->len = min_len;
 } else {
  buffer->len = copy_len;
 }

 buffer->skb = skb;
 buffer->flags = EF4_TX_BUF_SKB;

 ++tx_queue->insert_count;
 return rc;
}
