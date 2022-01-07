
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct alx_priv {struct net_device* dev; } ;


 int alx_activate (struct alx_priv*) ;
 int dev_info (int *,char*) ;
 int netif_device_attach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct alx_priv* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void alx_pci_error_resume(struct pci_dev *pdev)
{
 struct alx_priv *alx = pci_get_drvdata(pdev);
 struct net_device *netdev = alx->dev;

 dev_info(&pdev->dev, "pci error resume\n");

 rtnl_lock();

 if (netif_running(netdev)) {
  alx_activate(alx);
  netif_device_attach(netdev);
 }

 rtnl_unlock();
}
