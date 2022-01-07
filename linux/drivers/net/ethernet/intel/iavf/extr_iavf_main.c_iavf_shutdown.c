
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct iavf_adapter {scalar_t__ aq_required; int state; } ;


 int __IAVF_REMOVE ;
 int iavf_close (struct net_device*) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;

__attribute__((used)) static void iavf_shutdown(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct iavf_adapter *adapter = netdev_priv(netdev);

 netif_device_detach(netdev);

 if (netif_running(netdev))
  iavf_close(netdev);


 adapter->state = __IAVF_REMOVE;
 adapter->aq_required = 0;





 pci_disable_device(pdev);
}
