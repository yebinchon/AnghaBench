
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct niu {int * regs; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int *) ;
 struct niu* netdev_priv (struct net_device*) ;
 int niu_ldg_free (struct niu*) ;
 int niu_put_parent (struct niu*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void niu_pci_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (dev) {
  struct niu *np = netdev_priv(dev);

  unregister_netdev(dev);
  if (np->regs) {
   iounmap(np->regs);
   np->regs = ((void*)0);
  }

  niu_ldg_free(np);

  niu_put_parent(np);

  free_netdev(dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
 }
}
