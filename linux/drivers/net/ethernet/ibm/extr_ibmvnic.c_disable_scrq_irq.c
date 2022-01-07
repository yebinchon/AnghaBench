
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_sub_crq_queue {int hw_irq; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int unit_address; struct device dev; } ;


 int H_DISABLE_VIO_INTERRUPT ;
 int H_VIOCTL ;
 int dev_err (struct device*,char*,int ,unsigned long) ;
 unsigned long plpar_hcall_norets (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int disable_scrq_irq(struct ibmvnic_adapter *adapter,
       struct ibmvnic_sub_crq_queue *scrq)
{
 struct device *dev = &adapter->vdev->dev;
 unsigned long rc;

 rc = plpar_hcall_norets(H_VIOCTL, adapter->vdev->unit_address,
    H_DISABLE_VIO_INTERRUPT, scrq->hw_irq, 0, 0);
 if (rc)
  dev_err(dev, "Couldn't disable scrq irq 0x%lx. rc=%ld\n",
   scrq->hw_irq, rc);
 return rc;
}
