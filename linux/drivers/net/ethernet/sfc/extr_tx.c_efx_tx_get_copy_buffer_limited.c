
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_tx_queue {int dummy; } ;
struct efx_tx_buffer {int dummy; } ;


 size_t EFX_TX_CB_SIZE ;
 int * efx_tx_get_copy_buffer (struct efx_tx_queue*,struct efx_tx_buffer*) ;

u8 *efx_tx_get_copy_buffer_limited(struct efx_tx_queue *tx_queue,
       struct efx_tx_buffer *buffer, size_t len)
{
 if (len > EFX_TX_CB_SIZE)
  return ((void*)0);
 return efx_tx_get_copy_buffer(tx_queue, buffer);
}
