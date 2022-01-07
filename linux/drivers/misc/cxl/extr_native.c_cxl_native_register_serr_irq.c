
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {int serr_hwirq; int * err_irq_name; int serr_virq; int adapter; int dev; } ;


 int CXL_PSL_SERR_An ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;
 int cxl_p1n_read (struct cxl_afu*,int ) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_register_one_irq (int ,int ,struct cxl_afu*,int*,int *,int *) ;
 int dev_name (int *) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int native_slice_irq_err ;

int cxl_native_register_serr_irq(struct cxl_afu *afu)
{
 u64 serr;
 int rc;

 afu->err_irq_name = kasprintf(GFP_KERNEL, "cxl-%s-err",
          dev_name(&afu->dev));
 if (!afu->err_irq_name)
  return -ENOMEM;

 if ((rc = cxl_register_one_irq(afu->adapter, native_slice_irq_err, afu,
           &afu->serr_hwirq,
           &afu->serr_virq, afu->err_irq_name))) {
  kfree(afu->err_irq_name);
  afu->err_irq_name = ((void*)0);
  return rc;
 }

 serr = cxl_p1n_read(afu, CXL_PSL_SERR_An);
 if (cxl_is_power8())
  serr = (serr & 0x00ffffffffff0000ULL) | (afu->serr_hwirq & 0xffff);
 if (cxl_is_power9()) {




  serr = (serr & ~0xff0000007fffffffULL) | (afu->serr_hwirq & 0xffff);
 }
 cxl_p1n_write(afu, CXL_PSL_SERR_An, serr);

 return 0;
}
