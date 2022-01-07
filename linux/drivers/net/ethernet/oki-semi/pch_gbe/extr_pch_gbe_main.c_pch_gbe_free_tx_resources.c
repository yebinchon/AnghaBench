
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pch_gbe_tx_ring {int * desc; int dma; int size; int * buffer_info; } ;
struct pch_gbe_adapter {struct pci_dev* pdev; } ;


 int pch_gbe_clean_tx_ring (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int vfree (int *) ;

void pch_gbe_free_tx_resources(struct pch_gbe_adapter *adapter,
    struct pch_gbe_tx_ring *tx_ring)
{
 struct pci_dev *pdev = adapter->pdev;

 pch_gbe_clean_tx_ring(adapter, tx_ring);
 vfree(tx_ring->buffer_info);
 tx_ring->buffer_info = ((void*)0);
 pci_free_consistent(pdev, tx_ring->size, tx_ring->desc, tx_ring->dma);
 tx_ring->desc = ((void*)0);
}
