
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int dma_addr; int len; } ;
typedef int efx_qword_t ;


 int EFX_POPULATE_QWORD_2 (int ,int ,int ,int ,int ) ;
 int ESF_DZ_RX_KER_BUF_ADDR ;
 int ESF_DZ_RX_KER_BYTE_CNT ;
 struct efx_rx_buffer* efx_rx_buffer (struct efx_rx_queue*,unsigned int) ;
 int * efx_rx_desc (struct efx_rx_queue*,unsigned int) ;

__attribute__((used)) static inline void
efx_ef10_build_rx_desc(struct efx_rx_queue *rx_queue, unsigned int index)
{
 struct efx_rx_buffer *rx_buf;
 efx_qword_t *rxd;

 rxd = efx_rx_desc(rx_queue, index);
 rx_buf = efx_rx_buffer(rx_queue, index);
 EFX_POPULATE_QWORD_2(*rxd,
        ESF_DZ_RX_KER_BYTE_CNT, rx_buf->len,
        ESF_DZ_RX_KER_BUF_ADDR, rx_buf->dma_addr);
}
