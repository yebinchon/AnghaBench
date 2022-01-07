
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ixgb_desc_ring {int * desc; int dma; int size; int * buffer_info; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring rx_ring; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int ixgb_clean_rx_ring (struct ixgb_adapter*) ;
 int vfree (int *) ;

void
ixgb_free_rx_resources(struct ixgb_adapter *adapter)
{
 struct ixgb_desc_ring *rx_ring = &adapter->rx_ring;
 struct pci_dev *pdev = adapter->pdev;

 ixgb_clean_rx_ring(adapter);

 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
     rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
