
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {int cnic_irq_task; int (* disable_int_sync ) (struct cnic_dev*) ;struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; TYPE_1__* irq_arr; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int vector; } ;


 int CNIC_DRV_STATE_USING_MSIX ;
 int free_irq (int ,struct cnic_dev*) ;
 int stub1 (struct cnic_dev*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void cnic_free_irq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;

 if (ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX) {
  cp->disable_int_sync(dev);
  tasklet_kill(&cp->cnic_irq_task);
  free_irq(ethdev->irq_arr[0].vector, dev);
 }
}
