
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_rx_queue {TYPE_2__* efx; } ;
struct efx_rx_buffer {int dma_addr; scalar_t__ len; } ;
typedef int efx_qword_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {scalar_t__ rx_buffer_padding; } ;


 int EFX_POPULATE_QWORD_3 (int ,int ,scalar_t__,int ,int ,int ,int ) ;
 int FSF_AZ_RX_KER_BUF_ADDR ;
 int FSF_AZ_RX_KER_BUF_REGION ;
 int FSF_AZ_RX_KER_BUF_SIZE ;
 struct efx_rx_buffer* efx_rx_buffer (struct efx_rx_queue*,unsigned int) ;
 int * efx_rx_desc (struct efx_rx_queue*,unsigned int) ;

__attribute__((used)) static inline void
efx_farch_build_rx_desc(struct efx_rx_queue *rx_queue, unsigned index)
{
 struct efx_rx_buffer *rx_buf;
 efx_qword_t *rxd;

 rxd = efx_rx_desc(rx_queue, index);
 rx_buf = efx_rx_buffer(rx_queue, index);
 EFX_POPULATE_QWORD_3(*rxd,
        FSF_AZ_RX_KER_BUF_SIZE,
        rx_buf->len -
        rx_queue->efx->type->rx_buffer_padding,
        FSF_AZ_RX_KER_BUF_REGION, 0,
        FSF_AZ_RX_KER_BUF_ADDR, rx_buf->dma_addr);
}
