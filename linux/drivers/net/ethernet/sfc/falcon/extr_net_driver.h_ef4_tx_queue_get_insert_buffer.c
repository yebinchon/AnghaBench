
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int dummy; } ;
struct ef4_tx_buffer {int unmap_len; int flags; int len; } ;


 int EF4_BUG_ON_PARANOID (int ) ;
 struct ef4_tx_buffer* __ef4_tx_queue_get_insert_buffer (struct ef4_tx_queue const*) ;

__attribute__((used)) static inline struct ef4_tx_buffer *
ef4_tx_queue_get_insert_buffer(const struct ef4_tx_queue *tx_queue)
{
 struct ef4_tx_buffer *buffer =
  __ef4_tx_queue_get_insert_buffer(tx_queue);

 EF4_BUG_ON_PARANOID(buffer->len);
 EF4_BUG_ON_PARANOID(buffer->flags);
 EF4_BUG_ON_PARANOID(buffer->unmap_len);

 return buffer;
}
