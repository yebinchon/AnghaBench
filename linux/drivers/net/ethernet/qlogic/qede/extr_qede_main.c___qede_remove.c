
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qede_dev {TYPE_2__* ops; int sp_task; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
typedef enum qede_remove_mode { ____Placeholder_qede_remove_mode } qede_remove_mode ;
struct TYPE_8__ {TYPE_3__* common; } ;
struct TYPE_7__ {int (* remove ) (struct qed_dev*) ;int (* slowpath_stop ) (struct qed_dev*) ;} ;
struct TYPE_6__ {TYPE_1__* common; } ;
struct TYPE_5__ {int (* set_power_state ) (struct qed_dev*,int ) ;} ;


 int DP_INFO (struct qede_dev*,char*) ;
 int PCI_D0 ;
 int QEDE_REMOVE_RECOVERY ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int cancel_delayed_work_sync (int *) ;
 int dev_info (int *,char*) ;
 int free_netdev (struct net_device*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 TYPE_4__* qed_ops ;
 int qede_ptp_disable (struct qede_dev*) ;
 int qede_rdma_dev_remove (struct qede_dev*,int) ;
 int stub1 (struct qed_dev*,int ) ;
 int stub2 (struct qed_dev*) ;
 int stub3 (struct qed_dev*) ;
 scalar_t__ system_state ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void __qede_remove(struct pci_dev *pdev, enum qede_remove_mode mode)
{
 struct net_device *ndev = pci_get_drvdata(pdev);
 struct qede_dev *edev;
 struct qed_dev *cdev;

 if (!ndev) {
  dev_info(&pdev->dev, "Device has already been removed\n");
  return;
 }

 edev = netdev_priv(ndev);
 cdev = edev->cdev;

 DP_INFO(edev, "Starting qede_remove\n");

 qede_rdma_dev_remove(edev, (mode == QEDE_REMOVE_RECOVERY));

 if (mode != QEDE_REMOVE_RECOVERY) {
  unregister_netdev(ndev);

  cancel_delayed_work_sync(&edev->sp_task);

  edev->ops->common->set_power_state(cdev, PCI_D0);

  pci_set_drvdata(pdev, ((void*)0));
 }

 qede_ptp_disable(edev);


 qed_ops->common->slowpath_stop(cdev);
 if (system_state == SYSTEM_POWER_OFF)
  return;
 qed_ops->common->remove(cdev);







 if (mode != QEDE_REMOVE_RECOVERY)
  free_netdev(ndev);

 dev_info(&pdev->dev, "Ending qede_remove successfully\n");
}
