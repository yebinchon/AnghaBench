
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ef4_tx_queue {int dummy; } ;
struct ef4_tx_buffer {int dummy; } ;


 size_t EF4_TX_CB_SIZE ;
 int * ef4_tx_get_copy_buffer (struct ef4_tx_queue*,struct ef4_tx_buffer*) ;

u8 *ef4_tx_get_copy_buffer_limited(struct ef4_tx_queue *tx_queue,
       struct ef4_tx_buffer *buffer, size_t len)
{
 if (len > EF4_TX_CB_SIZE)
  return ((void*)0);
 return ef4_tx_get_copy_buffer(tx_queue, buffer);
}
