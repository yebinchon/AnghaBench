
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct igbvf_adapter {int dummy; } ;


 int dev_err (int *,char*) ;
 scalar_t__ igbvf_up (struct igbvf_adapter*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void igbvf_io_resume(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 if (netif_running(netdev)) {
  if (igbvf_up(adapter)) {
   dev_err(&pdev->dev,
    "can't bring device back up after reset\n");
   return;
  }
 }

 netif_device_attach(netdev);
}
