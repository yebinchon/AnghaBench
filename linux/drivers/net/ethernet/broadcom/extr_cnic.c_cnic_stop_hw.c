
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cnic_local {int (* stop_hw ) (struct cnic_dev*) ;int * ulp_ops; TYPE_2__* ethdev; int (* stop_cm ) (struct cnic_dev*) ;TYPE_1__* udev; } ;
struct cnic_dev {int pcidev; int flags; struct cnic_local* cnic_priv; } ;
struct TYPE_4__ {int drv_state; } ;
struct TYPE_3__ {int uio_dev; } ;


 int CNIC_DRV_STATE_HANDLES_IRQ ;
 int CNIC_F_CNIC_UP ;
 size_t CNIC_ULP_L4 ;
 int RCU_INIT_POINTER (int ,int *) ;
 int clear_bit (int ,int *) ;
 int cnic_cm_shutdown (struct cnic_dev*) ;
 int cnic_shutdown_rings (struct cnic_dev*) ;
 int msleep (int) ;
 int pci_dev_put (int ) ;
 int stub1 (struct cnic_dev*) ;
 int stub2 (struct cnic_dev*) ;
 int synchronize_rcu () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cnic_stop_hw(struct cnic_dev *dev)
{
 if (test_bit(CNIC_F_CNIC_UP, &dev->flags)) {
  struct cnic_local *cp = dev->cnic_priv;
  int i = 0;




  while (cp->udev && cp->udev->uio_dev != -1 && i < 15) {
   msleep(100);
   i++;
  }
  cnic_shutdown_rings(dev);
  cp->stop_cm(dev);
  cp->ethdev->drv_state &= ~CNIC_DRV_STATE_HANDLES_IRQ;
  clear_bit(CNIC_F_CNIC_UP, &dev->flags);
  RCU_INIT_POINTER(cp->ulp_ops[CNIC_ULP_L4], ((void*)0));
  synchronize_rcu();
  cnic_cm_shutdown(dev);
  cp->stop_hw(dev);
  pci_dev_put(dev->pcidev);
 }
}
