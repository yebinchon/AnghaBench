
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int * psl_irq_name; TYPE_1__* native; int adapter; int dev; } ;
struct TYPE_2__ {int psl_virq; int psl_hwirq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cxl_register_one_irq (int ,int ,struct cxl_afu*,int *,int *,int *) ;
 int dev_name (int *) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int native_irq_multiplexed ;

int cxl_native_register_psl_irq(struct cxl_afu *afu)
{
 int rc;

 afu->psl_irq_name = kasprintf(GFP_KERNEL, "cxl-%s",
          dev_name(&afu->dev));
 if (!afu->psl_irq_name)
  return -ENOMEM;

 if ((rc = cxl_register_one_irq(afu->adapter, native_irq_multiplexed,
        afu, &afu->native->psl_hwirq, &afu->native->psl_virq,
        afu->psl_irq_name))) {
  kfree(afu->psl_irq_name);
  afu->psl_irq_name = ((void*)0);
 }
 return rc;
}
