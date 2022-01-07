
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_adapter {int flags; } ;


 int FLAG_HAS_AMT ;
 int e1000_init_manageability_pt (struct e1000_adapter*) ;
 int e1000e_get_hw_control (struct e1000_adapter*) ;
 int e1000e_up (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void e1000_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);

 e1000_init_manageability_pt(adapter);

 if (netif_running(netdev))
  e1000e_up(adapter);

 netif_device_attach(netdev);





 if (!(adapter->flags & FLAG_HAS_AMT))
  e1000e_get_hw_control(adapter);
}
