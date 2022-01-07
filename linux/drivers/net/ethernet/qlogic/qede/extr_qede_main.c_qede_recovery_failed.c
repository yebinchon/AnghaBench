
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {scalar_t__ cdev; TYPE_2__* ops; int ndev; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int (* set_power_state ) (scalar_t__,int ) ;} ;


 int PCI_D3hot ;
 int netdev_err (int ,char*) ;
 int netif_device_detach (int ) ;
 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static void qede_recovery_failed(struct qede_dev *edev)
{
 netdev_err(edev->ndev, "Recovery handling has failed. Power cycle is needed.\n");

 netif_device_detach(edev->ndev);

 if (edev->cdev)
  edev->ops->common->set_power_state(edev->cdev, PCI_D3hot);
}
