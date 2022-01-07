
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct atl1e_rx_ring {int real_page_size; struct atl1e_rx_page_desc* rx_page_desc; } ;
struct atl1e_rx_page_desc {TYPE_1__* rx_page; } ;
struct atl1e_adapter {size_t num_rx_queues; int * ring_vir_addr; struct atl1e_rx_ring rx_ring; } ;
struct TYPE_2__ {int * addr; } ;


 size_t AT_PAGE_NUM_PER_QUEUE ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void atl1e_clean_rx_ring(struct atl1e_adapter *adapter)
{
 struct atl1e_rx_ring *rx_ring =
  &adapter->rx_ring;
 struct atl1e_rx_page_desc *rx_page_desc = rx_ring->rx_page_desc;
 u16 i, j;


 if (adapter->ring_vir_addr == ((void*)0))
  return;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  for (j = 0; j < AT_PAGE_NUM_PER_QUEUE; j++) {
   if (rx_page_desc[i].rx_page[j].addr != ((void*)0)) {
    memset(rx_page_desc[i].rx_page[j].addr, 0,
      rx_ring->real_page_size);
   }
  }
 }
}
