
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igc_adapter {struct pci_dev* pdev; struct net_device* netdev; } ;


 int ENOMEM ;
 int dev_err (int *,char*) ;
 int igc_close (struct net_device*) ;
 scalar_t__ igc_init_interrupt_scheme (struct igc_adapter*,int) ;
 int igc_open (struct net_device*) ;
 int igc_reset_interrupt_capability (struct igc_adapter*) ;
 scalar_t__ netif_running (struct net_device*) ;

int igc_reinit_queues(struct igc_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;
 int err = 0;

 if (netif_running(netdev))
  igc_close(netdev);

 igc_reset_interrupt_capability(adapter);

 if (igc_init_interrupt_scheme(adapter, 1)) {
  dev_err(&pdev->dev, "Unable to allocate memory for queues\n");
  return -ENOMEM;
 }

 if (netif_running(netdev))
  err = igc_open(netdev);

 return err;
}
