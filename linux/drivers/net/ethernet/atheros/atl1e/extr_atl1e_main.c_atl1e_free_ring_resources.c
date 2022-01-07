
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * tx_buffer; } ;
struct atl1e_adapter {TYPE_1__ tx_ring; int * ring_vir_addr; int ring_dma; int ring_size; struct pci_dev* pdev; } ;


 int atl1e_clean_rx_ring (struct atl1e_adapter*) ;
 int atl1e_clean_tx_ring (struct atl1e_adapter*) ;
 int kfree (int *) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;

__attribute__((used)) static void atl1e_free_ring_resources(struct atl1e_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 atl1e_clean_tx_ring(adapter);
 atl1e_clean_rx_ring(adapter);

 if (adapter->ring_vir_addr) {
  pci_free_consistent(pdev, adapter->ring_size,
    adapter->ring_vir_addr, adapter->ring_dma);
  adapter->ring_vir_addr = ((void*)0);
 }

 if (adapter->tx_ring.tx_buffer) {
  kfree(adapter->tx_ring.tx_buffer);
  adapter->tx_ring.tx_buffer = ((void*)0);
 }
}
