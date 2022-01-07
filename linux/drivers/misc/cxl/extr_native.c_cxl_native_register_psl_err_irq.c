
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {TYPE_1__* native; int * irq_name; int dev; } ;
struct TYPE_2__ {int err_hwirq; int err_virq; } ;


 int CXL_PSL_ErrIVTE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int cxl_register_one_irq (struct cxl*,int ,struct cxl*,int*,int *,int *) ;
 int dev_name (int *) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int native_irq_err ;

int cxl_native_register_psl_err_irq(struct cxl *adapter)
{
 int rc;

 adapter->irq_name = kasprintf(GFP_KERNEL, "cxl-%s-err",
          dev_name(&adapter->dev));
 if (!adapter->irq_name)
  return -ENOMEM;

 if ((rc = cxl_register_one_irq(adapter, native_irq_err, adapter,
           &adapter->native->err_hwirq,
           &adapter->native->err_virq,
           adapter->irq_name))) {
  kfree(adapter->irq_name);
  adapter->irq_name = ((void*)0);
  return rc;
 }

 cxl_p1_write(adapter, CXL_PSL_ErrIVTE, adapter->native->err_hwirq & 0xffff);

 return 0;
}
