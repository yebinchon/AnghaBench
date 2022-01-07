
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int mem_map_registers; int * workqueue; int tx_timeout_work; int reset_work; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int cancel_delayed_work (int *) ;
 int destroy_workqueue (int *) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct ql3_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int ql_disable_interrupts (struct ql3_adapter*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ql3xxx_remove(struct pci_dev *pdev)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct ql3_adapter *qdev = netdev_priv(ndev);

 unregister_netdev(ndev);

 ql_disable_interrupts(qdev);

 if (qdev->workqueue) {
  cancel_delayed_work(&qdev->reset_work);
  cancel_delayed_work(&qdev->tx_timeout_work);
  destroy_workqueue(qdev->workqueue);
  qdev->workqueue = ((void*)0);
 }

 iounmap(qdev->mem_map_registers);
 pci_release_regions(pdev);
 free_netdev(ndev);
}
