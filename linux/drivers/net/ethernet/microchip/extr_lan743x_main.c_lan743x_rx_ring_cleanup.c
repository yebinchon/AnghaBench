
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lan743x_rx {int ring_size; int ring_allocation_size; scalar_t__ last_head; scalar_t__ ring_dma_ptr; int * ring_cpu_ptr; TYPE_1__* adapter; int * buffer_info; scalar_t__ head_dma_ptr; int * head_cpu_ptr; } ;
struct TYPE_2__ {int pdev; } ;


 int kfree (int *) ;
 int lan743x_rx_release_ring_element (struct lan743x_rx*,int) ;
 int pci_free_consistent (int ,int,int *,scalar_t__) ;

__attribute__((used)) static void lan743x_rx_ring_cleanup(struct lan743x_rx *rx)
{
 if (rx->buffer_info && rx->ring_cpu_ptr) {
  int index;

  for (index = 0; index < rx->ring_size; index++)
   lan743x_rx_release_ring_element(rx, index);
 }

 if (rx->head_cpu_ptr) {
  pci_free_consistent(rx->adapter->pdev,
        sizeof(*rx->head_cpu_ptr),
        rx->head_cpu_ptr,
        rx->head_dma_ptr);
  rx->head_cpu_ptr = ((void*)0);
  rx->head_dma_ptr = 0;
 }

 kfree(rx->buffer_info);
 rx->buffer_info = ((void*)0);

 if (rx->ring_cpu_ptr) {
  pci_free_consistent(rx->adapter->pdev,
        rx->ring_allocation_size,
        rx->ring_cpu_ptr,
        rx->ring_dma_ptr);
  rx->ring_allocation_size = 0;
  rx->ring_cpu_ptr = ((void*)0);
  rx->ring_dma_ptr = 0;
 }

 rx->ring_size = 0;
 rx->last_head = 0;
}
