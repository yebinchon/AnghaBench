
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_gbe_rx_ring {int * desc; int dma; int size; int * buffer_info; } ;
struct pch_gbe_adapter {struct pci_dev* pdev; } ;


 int pch_gbe_clean_rx_ring (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int vfree (int *) ;

void pch_gbe_free_rx_resources(struct pch_gbe_adapter *adapter,
    struct pch_gbe_rx_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;

 pch_gbe_clean_rx_ring(adapter, rx_ring);
 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);
 pci_free_consistent(pdev, rx_ring->size, rx_ring->desc, rx_ring->dma);
 rx_ring->desc = ((void*)0);
}
