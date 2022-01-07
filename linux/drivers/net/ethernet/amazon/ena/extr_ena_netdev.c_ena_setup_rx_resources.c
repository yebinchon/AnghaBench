
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct ena_rx_buffer {int dummy; } ;
struct ena_ring {int ring_size; int* free_ids; int cpu; scalar_t__ next_to_use; scalar_t__ next_to_clean; int rx_stats; int * rx_buffer_info; } ;
struct ena_irq {int cpu; } ;
struct ena_adapter {int netdev; struct ena_irq* irq_tbl; struct ena_ring* rx_ring; } ;


 int EEXIST ;
 size_t ENA_IO_IRQ_IDX (size_t) ;
 int ENOMEM ;
 int cpu_to_node (int ) ;
 int ifup ;
 int memset (int *,int,int) ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 int vfree (int *) ;
 void* vzalloc (int) ;
 void* vzalloc_node (int,int) ;

__attribute__((used)) static int ena_setup_rx_resources(struct ena_adapter *adapter,
      u32 qid)
{
 struct ena_ring *rx_ring = &adapter->rx_ring[qid];
 struct ena_irq *ena_irq = &adapter->irq_tbl[ENA_IO_IRQ_IDX(qid)];
 int size, node, i;

 if (rx_ring->rx_buffer_info) {
  netif_err(adapter, ifup, adapter->netdev,
     "rx_buffer_info is not NULL");
  return -EEXIST;
 }




 size = sizeof(struct ena_rx_buffer) * (rx_ring->ring_size + 1);
 node = cpu_to_node(ena_irq->cpu);

 rx_ring->rx_buffer_info = vzalloc_node(size, node);
 if (!rx_ring->rx_buffer_info) {
  rx_ring->rx_buffer_info = vzalloc(size);
  if (!rx_ring->rx_buffer_info)
   return -ENOMEM;
 }

 size = sizeof(u16) * rx_ring->ring_size;
 rx_ring->free_ids = vzalloc_node(size, node);
 if (!rx_ring->free_ids) {
  rx_ring->free_ids = vzalloc(size);
  if (!rx_ring->free_ids) {
   vfree(rx_ring->rx_buffer_info);
   rx_ring->rx_buffer_info = ((void*)0);
   return -ENOMEM;
  }
 }


 for (i = 0; i < rx_ring->ring_size; i++)
  rx_ring->free_ids[i] = i;


 memset(&rx_ring->rx_stats, 0x0, sizeof(rx_ring->rx_stats));

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;
 rx_ring->cpu = ena_irq->cpu;

 return 0;
}
