
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {struct efx_rx_buffer* buffer; } ;
struct efx_rx_buffer {int dummy; } ;



__attribute__((used)) static inline struct efx_rx_buffer *efx_rx_buffer(struct efx_rx_queue *rx_queue,
        unsigned int index)
{
 return &rx_queue->buffer[index];
}
