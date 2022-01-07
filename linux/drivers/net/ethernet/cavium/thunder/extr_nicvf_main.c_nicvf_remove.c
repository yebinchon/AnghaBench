
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nicvf {int ptp_clock; scalar_t__ drv_stats; int * nicvf_rx_mode_wq; TYPE_1__* pnicvf; } ;
struct net_device {scalar_t__ reg_state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 scalar_t__ NETREG_REGISTERED ;
 int cavium_ptp_put (int ) ;
 int destroy_workqueue (int *) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (scalar_t__) ;
 struct nicvf* netdev_priv (struct net_device*) ;
 int nicvf_unregister_interrupts (struct nicvf*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void nicvf_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct nicvf *nic;
 struct net_device *pnetdev;

 if (!netdev)
  return;

 nic = netdev_priv(netdev);
 pnetdev = nic->pnicvf->netdev;




 if (pnetdev && (pnetdev->reg_state == NETREG_REGISTERED))
  unregister_netdev(pnetdev);
 if (nic->nicvf_rx_mode_wq) {
  destroy_workqueue(nic->nicvf_rx_mode_wq);
  nic->nicvf_rx_mode_wq = ((void*)0);
 }
 nicvf_unregister_interrupts(nic);
 pci_set_drvdata(pdev, ((void*)0));
 if (nic->drv_stats)
  free_percpu(nic->drv_stats);
 cavium_ptp_put(nic->ptp_clock);
 free_netdev(netdev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
