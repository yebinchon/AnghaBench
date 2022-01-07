
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int state; } ;
typedef int pm_message_t ;


 int WARN_ON (int ) ;
 int __IGBVF_RESETTING ;
 int igbvf_down (struct igbvf_adapter*) ;
 int igbvf_free_irq (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int igbvf_suspend(struct pci_dev *pdev, pm_message_t state)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igbvf_adapter *adapter = netdev_priv(netdev);




 netif_device_detach(netdev);

 if (netif_running(netdev)) {
  WARN_ON(test_bit(__IGBVF_RESETTING, &adapter->state));
  igbvf_down(adapter);
  igbvf_free_irq(adapter);
 }







 pci_disable_device(pdev);

 return 0;
}
