
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct igb_adapter {int num_rx_queues; int * rx_ring; struct pci_dev* pdev; } ;


 int dev_err (int *,char*,int) ;
 int igb_free_rx_resources (int ) ;
 int igb_setup_rx_resources (int ) ;

__attribute__((used)) static int igb_setup_all_rx_resources(struct igb_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 int i, err = 0;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  err = igb_setup_rx_resources(adapter->rx_ring[i]);
  if (err) {
   dev_err(&pdev->dev,
    "Allocation for Rx Queue %u failed\n", i);
   for (i--; i >= 0; i--)
    igb_free_rx_resources(adapter->rx_ring[i]);
   break;
  }
 }

 return err;
}
