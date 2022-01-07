
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct gem_init_block {int dummy; } ;
struct gem {int regs; int gblock_dvma; int init_block; int reset_task; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct gem* netdev_priv (struct net_device*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void gem_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (dev) {
  struct gem *gp = netdev_priv(dev);

  unregister_netdev(dev);


  cancel_work_sync(&gp->reset_task);


  pci_free_consistent(pdev,
        sizeof(struct gem_init_block),
        gp->init_block,
        gp->gblock_dvma);
  iounmap(gp->regs);
  pci_release_regions(pdev);
  free_netdev(dev);
 }
}
