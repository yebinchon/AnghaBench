
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct fe_priv {int txrx_stats; } ;


 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 int free_rings (struct net_device*) ;
 int get_hwbase (struct net_device*) ;
 int iounmap (int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int nv_mgmt_release_sema (struct net_device*) ;
 int nv_restore_mac_addr (struct pci_dev*) ;
 int nv_restore_phy (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void nv_remove(struct pci_dev *pci_dev)
{
 struct net_device *dev = pci_get_drvdata(pci_dev);
 struct fe_priv *np = netdev_priv(dev);

 free_percpu(np->txrx_stats);

 unregister_netdev(dev);

 nv_restore_mac_addr(pci_dev);


 nv_restore_phy(dev);

 nv_mgmt_release_sema(dev);


 free_rings(dev);
 iounmap(get_hwbase(dev));
 pci_release_regions(pci_dev);
 pci_disable_device(pci_dev);
 free_netdev(dev);
}
