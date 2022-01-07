
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {scalar_t__ reg_state; } ;
struct fm10k_intfc {scalar_t__ uc_addr; scalar_t__ sw_addr; int glort; int service_timer; struct net_device* netdev; } ;


 scalar_t__ NETREG_REGISTERED ;
 int del_timer_sync (int *) ;
 int fm10k_clear_macvlan_queue (struct fm10k_intfc*,int ,int) ;
 int fm10k_clear_queueing_scheme (struct fm10k_intfc*) ;
 int fm10k_dbg_intfc_exit (struct fm10k_intfc*) ;
 int fm10k_iov_disable (struct pci_dev*) ;
 int fm10k_mbx_free_irq (struct fm10k_intfc*) ;
 int fm10k_stop_macvlan_task (struct fm10k_intfc*) ;
 int fm10k_stop_service_event (struct fm10k_intfc*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct fm10k_intfc* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void fm10k_remove(struct pci_dev *pdev)
{
 struct fm10k_intfc *interface = pci_get_drvdata(pdev);
 struct net_device *netdev = interface->netdev;

 del_timer_sync(&interface->service_timer);

 fm10k_stop_service_event(interface);
 fm10k_stop_macvlan_task(interface);


 fm10k_clear_macvlan_queue(interface, interface->glort, 1);


 if (netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(netdev);


 fm10k_iov_disable(pdev);


 fm10k_mbx_free_irq(interface);


 fm10k_clear_queueing_scheme(interface);


 fm10k_dbg_intfc_exit(interface);

 if (interface->sw_addr)
  iounmap(interface->sw_addr);
 iounmap(interface->uc_addr);

 free_netdev(netdev);

 pci_release_mem_regions(pdev);

 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}
