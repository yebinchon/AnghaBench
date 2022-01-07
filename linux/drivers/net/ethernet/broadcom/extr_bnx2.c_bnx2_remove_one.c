
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int temp_stats_blk; int regview; int pdev; int reset_task; int timer; } ;


 int BNX2_FLAG_AER_ENABLED ;
 int bnx2_free_stats_blk (struct net_device*) ;
 int bnx2_release_firmware (struct bnx2*) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (int ,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
bnx2_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2 *bp = netdev_priv(dev);

 unregister_netdev(dev);

 del_timer_sync(&bp->timer);
 cancel_work_sync(&bp->reset_task);

 pci_iounmap(bp->pdev, bp->regview);

 bnx2_free_stats_blk(dev);
 kfree(bp->temp_stats_blk);

 if (bp->flags & BNX2_FLAG_AER_ENABLED) {
  pci_disable_pcie_error_reporting(pdev);
  bp->flags &= ~BNX2_FLAG_AER_ENABLED;
 }

 bnx2_release_firmware(bp);

 free_netdev(dev);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
