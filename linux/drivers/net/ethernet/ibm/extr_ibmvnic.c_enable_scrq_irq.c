
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_desc {int irq_data; } ;
struct irq_chip {int (* irq_eoi ) (int *) ;} ;
struct ibmvnic_sub_crq_queue {int hw_irq; int irq; } ;
struct ibmvnic_adapter {scalar_t__ reset_reason; TYPE_1__* vdev; int resetting; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int unit_address; struct device dev; } ;


 int H_ENABLE_VIO_INTERRUPT ;
 int H_VIOCTL ;
 scalar_t__ VNIC_RESET_MOBILITY ;
 int dev_err (struct device*,char*,int,...) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct irq_desc* irq_to_desc (int ) ;
 unsigned long plpar_hcall_norets (int ,int ,int ,int,int ,int ) ;
 int stub1 (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int enable_scrq_irq(struct ibmvnic_adapter *adapter,
      struct ibmvnic_sub_crq_queue *scrq)
{
 struct device *dev = &adapter->vdev->dev;
 unsigned long rc;

 if (scrq->hw_irq > 0x100000000ULL) {
  dev_err(dev, "bad hw_irq = %lx\n", scrq->hw_irq);
  return 1;
 }

 if (test_bit(0, &adapter->resetting) &&
     adapter->reset_reason == VNIC_RESET_MOBILITY) {
  struct irq_desc *desc = irq_to_desc(scrq->irq);
  struct irq_chip *chip = irq_desc_get_chip(desc);

  chip->irq_eoi(&desc->irq_data);
 }

 rc = plpar_hcall_norets(H_VIOCTL, adapter->vdev->unit_address,
    H_ENABLE_VIO_INTERRUPT, scrq->hw_irq, 0, 0);
 if (rc)
  dev_err(dev, "Couldn't enable scrq irq 0x%lx. rc=%ld\n",
   scrq->hw_irq, rc);
 return rc;
}
