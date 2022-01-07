
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct atl2_adapter {int ring_dma; int ring_vir_addr; int ring_size; struct pci_dev* pdev; } ;


 int pci_free_consistent (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void atl2_free_ring_resources(struct atl2_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 pci_free_consistent(pdev, adapter->ring_size, adapter->ring_vir_addr,
  adapter->ring_dma);
}
