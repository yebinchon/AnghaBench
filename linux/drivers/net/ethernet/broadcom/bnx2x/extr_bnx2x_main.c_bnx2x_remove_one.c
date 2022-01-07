
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 int __bnx2x_remove (struct pci_dev*,struct net_device*,struct bnx2x*,int) ;
 int dev_err (int *,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void bnx2x_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2x *bp;

 if (!dev) {
  dev_err(&pdev->dev, "BAD net device from bnx2x_init_one\n");
  return;
 }
 bp = netdev_priv(dev);

 __bnx2x_remove(pdev, dev, bp, 1);
}
