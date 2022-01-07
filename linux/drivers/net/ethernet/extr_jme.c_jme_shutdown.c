
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;


 int jme_powersave_phy (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_pme_active (struct pci_dev*,int) ;

__attribute__((used)) static void
jme_shutdown(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct jme_adapter *jme = netdev_priv(netdev);

 jme_powersave_phy(jme);
 pci_pme_active(pdev, 1);
}
