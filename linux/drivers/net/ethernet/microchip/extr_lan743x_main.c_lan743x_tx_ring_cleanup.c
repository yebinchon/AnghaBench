
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan743x_tx {void* ring_cpu_ptr; int ring_allocation_size; scalar_t__ ring_size; scalar_t__ ring_dma_ptr; TYPE_1__* adapter; int * buffer_info; scalar_t__ head_dma_ptr; int * head_cpu_ptr; } ;
struct TYPE_2__ {int pdev; } ;


 int kfree (int *) ;
 int pci_free_consistent (int ,int,void*,scalar_t__) ;

__attribute__((used)) static void lan743x_tx_ring_cleanup(struct lan743x_tx *tx)
{
 if (tx->head_cpu_ptr) {
  pci_free_consistent(tx->adapter->pdev,
        sizeof(*tx->head_cpu_ptr),
        (void *)(tx->head_cpu_ptr),
        tx->head_dma_ptr);
  tx->head_cpu_ptr = ((void*)0);
  tx->head_dma_ptr = 0;
 }
 kfree(tx->buffer_info);
 tx->buffer_info = ((void*)0);

 if (tx->ring_cpu_ptr) {
  pci_free_consistent(tx->adapter->pdev,
        tx->ring_allocation_size,
        tx->ring_cpu_ptr,
        tx->ring_dma_ptr);
  tx->ring_allocation_size = 0;
  tx->ring_cpu_ptr = ((void*)0);
  tx->ring_dma_ptr = 0;
 }
 tx->ring_size = 0;
}
