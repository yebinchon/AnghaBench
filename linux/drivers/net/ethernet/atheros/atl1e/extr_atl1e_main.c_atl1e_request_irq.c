
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; } ;
struct net_device {int name; } ;
struct atl1e_adapter {struct net_device* netdev; struct pci_dev* pdev; } ;


 int IRQF_SHARED ;
 int atl1e_intr ;
 int netdev_dbg (struct net_device*,char*,...) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int atl1e_request_irq(struct atl1e_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 struct net_device *netdev = adapter->netdev;
 int err = 0;

 err = request_irq(pdev->irq, atl1e_intr, IRQF_SHARED, netdev->name,
     netdev);
 if (err) {
  netdev_dbg(adapter->netdev,
      "Unable to allocate interrupt Error: %d\n", err);
  return err;
 }
 netdev_dbg(netdev, "atl1e_request_irq OK\n");
 return err;
}
