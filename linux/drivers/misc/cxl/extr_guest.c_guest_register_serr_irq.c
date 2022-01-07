
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_afu {int * err_irq_name; int serr_hwirq; int adapter; int serr_virq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cxl_map_irq (int ,int ,int ,struct cxl_afu*,int *) ;
 int dev_name (int *) ;
 int guest_slice_irq_err ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;

__attribute__((used)) static int guest_register_serr_irq(struct cxl_afu *afu)
{
 afu->err_irq_name = kasprintf(GFP_KERNEL, "cxl-%s-err",
          dev_name(&afu->dev));
 if (!afu->err_irq_name)
  return -ENOMEM;

 if (!(afu->serr_virq = cxl_map_irq(afu->adapter, afu->serr_hwirq,
     guest_slice_irq_err, afu, afu->err_irq_name))) {
  kfree(afu->err_irq_name);
  afu->err_irq_name = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
