
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int bar1; int bar0; int set_link_task; int rst_timer_task; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int DBG_PRINT (int ,char*) ;
 int ERR_DBG ;
 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int free_shared_mem (struct s2io_nic*) ;
 int iounmap (int ) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void s2io_rem_nic(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct s2io_nic *sp;

 if (dev == ((void*)0)) {
  DBG_PRINT(ERR_DBG, "Driver Data is NULL!!\n");
  return;
 }

 sp = netdev_priv(dev);

 cancel_work_sync(&sp->rst_timer_task);
 cancel_work_sync(&sp->set_link_task);

 unregister_netdev(dev);

 free_shared_mem(sp);
 iounmap(sp->bar0);
 iounmap(sp->bar1);
 pci_release_regions(pdev);
 free_netdev(dev);
 pci_disable_device(pdev);
}
