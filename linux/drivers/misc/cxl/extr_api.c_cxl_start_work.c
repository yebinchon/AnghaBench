
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_ioctl_start_work {int flags; scalar_t__ num_interrupts; int work_element_descriptor; } ;
struct cxl_context {TYPE_1__* afu; } ;
struct TYPE_2__ {scalar_t__ pp_irqs; scalar_t__ irqs_max; } ;


 int CXL_START_WORK_NUM_IRQS ;
 int EINVAL ;
 int afu_register_irqs (struct cxl_context*,scalar_t__) ;
 int afu_release_irqs (struct cxl_context*,struct cxl_context*) ;
 int current ;
 int cxl_start_context (struct cxl_context*,int ,int ) ;

int cxl_start_work(struct cxl_context *ctx,
     struct cxl_ioctl_start_work *work)
{
 int rc;


 if (!(work->flags & CXL_START_WORK_NUM_IRQS))
  work->num_interrupts = ctx->afu->pp_irqs;
 else if ((work->num_interrupts < ctx->afu->pp_irqs) ||
   (work->num_interrupts > ctx->afu->irqs_max)) {
  return -EINVAL;
 }

 rc = afu_register_irqs(ctx, work->num_interrupts);
 if (rc)
  return rc;

 rc = cxl_start_context(ctx, work->work_element_descriptor, current);
 if (rc < 0) {
  afu_release_irqs(ctx, ctx);
  return rc;
 }

 return 0;
}
