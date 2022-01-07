
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {scalar_t__ vferr_refcount; struct net_device* netdev; } ;


 int drv ;
 int e_info (int ,char*) ;
 int ixgbe_open (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void ixgbe_io_resume(struct pci_dev *pdev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;
 rtnl_lock();
 if (netif_running(netdev))
  ixgbe_open(netdev);

 netif_device_attach(netdev);
 rtnl_unlock();
}
