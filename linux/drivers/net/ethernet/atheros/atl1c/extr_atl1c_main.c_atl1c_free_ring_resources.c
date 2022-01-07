
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int * desc; int dma; int size; } ;
struct atl1c_adapter {int * rx_page; TYPE_1__* tpd_ring; TYPE_2__ ring_header; struct pci_dev* pdev; } ;
struct TYPE_3__ {int * buffer_info; } ;


 int kfree (int *) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int put_page (int *) ;

__attribute__((used)) static void atl1c_free_ring_resources(struct atl1c_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 pci_free_consistent(pdev, adapter->ring_header.size,
     adapter->ring_header.desc,
     adapter->ring_header.dma);
 adapter->ring_header.desc = ((void*)0);



 if (adapter->tpd_ring[0].buffer_info) {
  kfree(adapter->tpd_ring[0].buffer_info);
  adapter->tpd_ring[0].buffer_info = ((void*)0);
 }
 if (adapter->rx_page) {
  put_page(adapter->rx_page);
  adapter->rx_page = ((void*)0);
 }
}
