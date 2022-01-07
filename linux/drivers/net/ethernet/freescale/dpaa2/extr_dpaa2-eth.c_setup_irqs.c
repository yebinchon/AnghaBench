
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int dev; int mc_handle; int mc_io; struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int irq; } ;


 int DPNI_IRQ_EVENT_ENDPOINT_CHANGED ;
 int DPNI_IRQ_EVENT_LINK_CHANGED ;
 int DPNI_IRQ_INDEX ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int devm_free_irq (int *,int ,int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,int *) ;
 int dpni_irq0_handler_thread ;
 int dpni_set_irq_enable (int ,int ,int ,int ,int) ;
 int dpni_set_irq_mask (int ,int ,int ,int ,int) ;
 int fsl_mc_allocate_irqs (struct fsl_mc_device*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;

__attribute__((used)) static int setup_irqs(struct fsl_mc_device *ls_dev)
{
 int err = 0;
 struct fsl_mc_device_irq *irq;

 err = fsl_mc_allocate_irqs(ls_dev);
 if (err) {
  dev_err(&ls_dev->dev, "MC irqs allocation failed\n");
  return err;
 }

 irq = ls_dev->irqs[0];
 err = devm_request_threaded_irq(&ls_dev->dev, irq->msi_desc->irq,
     ((void*)0), dpni_irq0_handler_thread,
     IRQF_NO_SUSPEND | IRQF_ONESHOT,
     dev_name(&ls_dev->dev), &ls_dev->dev);
 if (err < 0) {
  dev_err(&ls_dev->dev, "devm_request_threaded_irq(): %d\n", err);
  goto free_mc_irq;
 }

 err = dpni_set_irq_mask(ls_dev->mc_io, 0, ls_dev->mc_handle,
    DPNI_IRQ_INDEX, DPNI_IRQ_EVENT_LINK_CHANGED |
    DPNI_IRQ_EVENT_ENDPOINT_CHANGED);
 if (err < 0) {
  dev_err(&ls_dev->dev, "dpni_set_irq_mask(): %d\n", err);
  goto free_irq;
 }

 err = dpni_set_irq_enable(ls_dev->mc_io, 0, ls_dev->mc_handle,
      DPNI_IRQ_INDEX, 1);
 if (err < 0) {
  dev_err(&ls_dev->dev, "dpni_set_irq_enable(): %d\n", err);
  goto free_irq;
 }

 return 0;

free_irq:
 devm_free_irq(&ls_dev->dev, irq->msi_desc->irq, &ls_dev->dev);
free_mc_irq:
 fsl_mc_free_irqs(ls_dev);

 return err;
}
