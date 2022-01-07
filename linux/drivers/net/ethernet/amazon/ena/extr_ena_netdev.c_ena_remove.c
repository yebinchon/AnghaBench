
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int * rx_cpu_rmap; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int msix_vecs; int reset_task; int timer_service; struct net_device* netdev; struct ena_com_dev* ena_dev; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int ena_com_delete_debug_area (struct ena_com_dev*) ;
 int ena_com_delete_host_info (struct ena_com_dev*) ;
 int ena_com_rss_destroy (struct ena_com_dev*) ;
 int ena_destroy_device (struct ena_adapter*,int) ;
 int ena_release_bars (struct ena_com_dev*,struct pci_dev*) ;
 int free_irq_cpu_rmap (int *) ;
 int free_netdev (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ena_adapter* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int unregister_netdev (struct net_device*) ;
 int vfree (struct ena_com_dev*) ;

__attribute__((used)) static void ena_remove(struct pci_dev *pdev)
{
 struct ena_adapter *adapter = pci_get_drvdata(pdev);
 struct ena_com_dev *ena_dev;
 struct net_device *netdev;

 ena_dev = adapter->ena_dev;
 netdev = adapter->netdev;







 del_timer_sync(&adapter->timer_service);

 cancel_work_sync(&adapter->reset_task);

 rtnl_lock();
 ena_destroy_device(adapter, 1);
 rtnl_unlock();

 unregister_netdev(netdev);

 free_netdev(netdev);

 ena_com_rss_destroy(ena_dev);

 ena_com_delete_debug_area(ena_dev);

 ena_com_delete_host_info(ena_dev);

 ena_release_bars(ena_dev, pdev);

 pci_disable_device(pdev);

 vfree(ena_dev);
}
