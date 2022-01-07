
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int * regs; int * aperegs; int fw; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int USE_PHYLIB ;
 int free_netdev (struct net_device*) ;
 int iounmap (int *) ;
 struct tg3* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int release_firmware (int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_mdio_fini (struct tg3*) ;
 int tg3_phy_fini (struct tg3*) ;
 int tg3_ptp_fini (struct tg3*) ;
 int tg3_reset_task_cancel (struct tg3*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void tg3_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);

 if (dev) {
  struct tg3 *tp = netdev_priv(dev);

  tg3_ptp_fini(tp);

  release_firmware(tp->fw);

  tg3_reset_task_cancel(tp);

  if (tg3_flag(tp, USE_PHYLIB)) {
   tg3_phy_fini(tp);
   tg3_mdio_fini(tp);
  }

  unregister_netdev(dev);
  if (tp->aperegs) {
   iounmap(tp->aperegs);
   tp->aperegs = ((void*)0);
  }
  if (tp->regs) {
   iounmap(tp->regs);
   tp->regs = ((void*)0);
  }
  free_netdev(dev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
 }
}
