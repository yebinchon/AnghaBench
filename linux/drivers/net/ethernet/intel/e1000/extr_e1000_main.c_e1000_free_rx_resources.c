
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct e1000_rx_ring {int * desc; int dma; int size; int * buffer_info; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int e1000_clean_rx_ring (struct e1000_adapter*,struct e1000_rx_ring*) ;
 int vfree (int *) ;

__attribute__((used)) static void e1000_free_rx_resources(struct e1000_adapter *adapter,
        struct e1000_rx_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;

 e1000_clean_rx_ring(adapter, rx_ring);

 vfree(rx_ring->buffer_info);
 rx_ring->buffer_info = ((void*)0);

 dma_free_coherent(&pdev->dev, rx_ring->size, rx_ring->desc,
     rx_ring->dma);

 rx_ring->desc = ((void*)0);
}
