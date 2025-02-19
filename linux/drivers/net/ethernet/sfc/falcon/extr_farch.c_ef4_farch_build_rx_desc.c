
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ef4_rx_queue {TYPE_2__* efx; } ;
struct ef4_rx_buffer {int dma_addr; scalar_t__ len; } ;
typedef int ef4_qword_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {scalar_t__ rx_buffer_padding; } ;


 int EF4_POPULATE_QWORD_3 (int ,int ,scalar_t__,int ,int ,int ,int ) ;
 int FSF_AZ_RX_KER_BUF_ADDR ;
 int FSF_AZ_RX_KER_BUF_REGION ;
 int FSF_AZ_RX_KER_BUF_SIZE ;
 struct ef4_rx_buffer* ef4_rx_buffer (struct ef4_rx_queue*,unsigned int) ;
 int * ef4_rx_desc (struct ef4_rx_queue*,unsigned int) ;

__attribute__((used)) static inline void
ef4_farch_build_rx_desc(struct ef4_rx_queue *rx_queue, unsigned index)
{
 struct ef4_rx_buffer *rx_buf;
 ef4_qword_t *rxd;

 rxd = ef4_rx_desc(rx_queue, index);
 rx_buf = ef4_rx_buffer(rx_queue, index);
 EF4_POPULATE_QWORD_3(*rxd,
        FSF_AZ_RX_KER_BUF_SIZE,
        rx_buf->len -
        rx_queue->efx->type->rx_buffer_padding,
        FSF_AZ_RX_KER_BUF_REGION, 0,
        FSF_AZ_RX_KER_BUF_ADDR, rx_buf->dma_addr);
}
