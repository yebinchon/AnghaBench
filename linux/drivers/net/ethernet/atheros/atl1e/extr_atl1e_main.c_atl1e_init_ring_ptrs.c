
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atl1e_tx_ring {int next_to_clean; scalar_t__ next_to_use; } ;
struct atl1e_rx_ring {struct atl1e_rx_page_desc* rx_page_desc; } ;
struct atl1e_rx_page_desc {TYPE_1__* rx_page; scalar_t__ rx_nxseq; scalar_t__ rx_using; } ;
struct atl1e_adapter {int num_rx_queues; struct atl1e_rx_ring rx_ring; struct atl1e_tx_ring tx_ring; } ;
struct TYPE_2__ {scalar_t__ read_offset; scalar_t__* write_offset_addr; } ;


 int AT_PAGE_NUM_PER_QUEUE ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void atl1e_init_ring_ptrs(struct atl1e_adapter *adapter)
{
 struct atl1e_tx_ring *tx_ring = ((void*)0);
 struct atl1e_rx_ring *rx_ring = ((void*)0);
 struct atl1e_rx_page_desc *rx_page_desc = ((void*)0);
 int i, j;

 tx_ring = &adapter->tx_ring;
 rx_ring = &adapter->rx_ring;
 rx_page_desc = rx_ring->rx_page_desc;

 tx_ring->next_to_use = 0;
 atomic_set(&tx_ring->next_to_clean, 0);

 for (i = 0; i < adapter->num_rx_queues; i++) {
  rx_page_desc[i].rx_using = 0;
  rx_page_desc[i].rx_nxseq = 0;
  for (j = 0; j < AT_PAGE_NUM_PER_QUEUE; j++) {
   *rx_page_desc[i].rx_page[j].write_offset_addr = 0;
   rx_page_desc[i].rx_page[j].read_offset = 0;
  }
 }
}
