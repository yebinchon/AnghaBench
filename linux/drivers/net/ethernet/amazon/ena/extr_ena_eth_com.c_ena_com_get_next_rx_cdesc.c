
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ena_eth_io_rx_cdesc_base {int status; } ;
struct TYPE_2__ {scalar_t__ virt_addr; } ;
struct ena_com_io_cq {int head; int q_depth; int phase; int cdesc_entry_size_in_bytes; TYPE_1__ cdesc_addr; } ;


 int ENA_ETH_IO_RX_CDESC_BASE_PHASE_MASK ;
 int ENA_ETH_IO_RX_CDESC_BASE_PHASE_SHIFT ;
 int READ_ONCE (int ) ;
 int dma_rmb () ;

__attribute__((used)) static struct ena_eth_io_rx_cdesc_base *ena_com_get_next_rx_cdesc(
 struct ena_com_io_cq *io_cq)
{
 struct ena_eth_io_rx_cdesc_base *cdesc;
 u16 expected_phase, head_masked;
 u16 desc_phase;

 head_masked = io_cq->head & (io_cq->q_depth - 1);
 expected_phase = io_cq->phase;

 cdesc = (struct ena_eth_io_rx_cdesc_base *)(io_cq->cdesc_addr.virt_addr
   + (head_masked * io_cq->cdesc_entry_size_in_bytes));

 desc_phase = (READ_ONCE(cdesc->status) & ENA_ETH_IO_RX_CDESC_BASE_PHASE_MASK) >>
   ENA_ETH_IO_RX_CDESC_BASE_PHASE_SHIFT;

 if (desc_phase != expected_phase)
  return ((void*)0);




 dma_rmb();

 return cdesc;
}
