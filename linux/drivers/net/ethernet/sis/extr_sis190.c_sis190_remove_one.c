
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis190_private {int phy_task; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct sis190_private* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int sis190_mii_remove (struct net_device*) ;
 int sis190_release_board (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void sis190_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct sis190_private *tp = netdev_priv(dev);

 sis190_mii_remove(dev);
 cancel_work_sync(&tp->phy_task);
 unregister_netdev(dev);
 sis190_release_board(pdev);
}
