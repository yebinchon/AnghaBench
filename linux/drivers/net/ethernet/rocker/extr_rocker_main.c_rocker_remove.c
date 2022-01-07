
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker {int pdev; int hw_addr; int rocker_owq; int fib_nb; } ;
struct pci_dev {int dummy; } ;
struct notifier_block {int dummy; } ;


 int CONTROL ;
 int ROCKER_CONTROL_RESET ;
 int ROCKER_MSIX_VEC_CMD ;
 int ROCKER_MSIX_VEC_EVENT ;
 int destroy_workqueue (int ) ;
 int free_irq (int ,struct rocker*) ;
 int iounmap (int ) ;
 int kfree (struct rocker*) ;
 int pci_disable_device (int ) ;
 struct rocker* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (int ) ;
 int rocker_dma_rings_fini (struct rocker*) ;
 int rocker_msix_fini (struct rocker*) ;
 int rocker_msix_vector (struct rocker*,int ) ;
 int rocker_remove_ports (struct rocker*) ;
 struct notifier_block rocker_switchdev_blocking_notifier ;
 int rocker_switchdev_notifier ;
 int rocker_write32 (struct rocker*,int ,int ) ;
 int unregister_fib_notifier (int *) ;
 int unregister_switchdev_blocking_notifier (struct notifier_block*) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static void rocker_remove(struct pci_dev *pdev)
{
 struct rocker *rocker = pci_get_drvdata(pdev);
 struct notifier_block *nb;

 nb = &rocker_switchdev_blocking_notifier;
 unregister_switchdev_blocking_notifier(nb);

 unregister_switchdev_notifier(&rocker_switchdev_notifier);
 unregister_fib_notifier(&rocker->fib_nb);
 rocker_remove_ports(rocker);
 rocker_write32(rocker, CONTROL, ROCKER_CONTROL_RESET);
 destroy_workqueue(rocker->rocker_owq);
 free_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_EVENT), rocker);
 free_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_CMD), rocker);
 rocker_dma_rings_fini(rocker);
 rocker_msix_fini(rocker);
 iounmap(rocker->hw_addr);
 pci_release_regions(rocker->pdev);
 pci_disable_device(rocker->pdev);
 kfree(rocker);
}
