
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_local {int cnic_irq_task; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int drv_state; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;


 int CNIC_DRV_STATE_USING_MSIX ;
 int cnic_request_irq (struct cnic_dev*) ;
 int cnic_service_bnx2x_bh ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int cnic_init_bnx2x_irq(struct cnic_dev *dev)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 int err = 0;

 tasklet_init(&cp->cnic_irq_task, cnic_service_bnx2x_bh,
       (unsigned long) dev);
 if (ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX)
  err = cnic_request_irq(dev);

 return err;
}
