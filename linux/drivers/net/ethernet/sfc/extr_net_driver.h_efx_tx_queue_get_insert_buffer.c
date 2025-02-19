
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int dummy; } ;
struct efx_tx_buffer {int unmap_len; int flags; int len; } ;


 int EFX_WARN_ON_ONCE_PARANOID (int ) ;
 struct efx_tx_buffer* __efx_tx_queue_get_insert_buffer (struct efx_tx_queue const*) ;

__attribute__((used)) static inline struct efx_tx_buffer *
efx_tx_queue_get_insert_buffer(const struct efx_tx_queue *tx_queue)
{
 struct efx_tx_buffer *buffer =
  __efx_tx_queue_get_insert_buffer(tx_queue);

 EFX_WARN_ON_ONCE_PARANOID(buffer->len);
 EFX_WARN_ON_ONCE_PARANOID(buffer->flags);
 EFX_WARN_ON_ONCE_PARANOID(buffer->unmap_len);

 return buffer;
}
