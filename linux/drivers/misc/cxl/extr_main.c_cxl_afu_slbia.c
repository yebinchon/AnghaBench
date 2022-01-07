
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int adapter; int dev; } ;
struct TYPE_2__ {int (* link_ok ) (int ,struct cxl_afu*) ;} ;


 int CXL_SLBIA_An ;
 unsigned long CXL_TIMEOUT ;
 int CXL_TLB_SLB_IQ_ALL ;
 int CXL_TLB_SLB_P ;
 int EBUSY ;
 int EIO ;
 unsigned long HZ ;
 int cpu_relax () ;
 TYPE_1__* cxl_ops ;
 int cxl_p2n_read (struct cxl_afu*,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int ) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int pr_devel (char*) ;
 int stub1 (int ,struct cxl_afu*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int cxl_afu_slbia(struct cxl_afu *afu)
{
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);

 pr_devel("cxl_afu_slbia issuing SLBIA command\n");
 cxl_p2n_write(afu, CXL_SLBIA_An, CXL_TLB_SLB_IQ_ALL);
 while (cxl_p2n_read(afu, CXL_SLBIA_An) & CXL_TLB_SLB_P) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&afu->dev, "WARNING: CXL AFU SLBIA timed out!\n");
   return -EBUSY;
  }



  if (!cxl_ops->link_ok(afu->adapter, afu))
   return -EIO;
  cpu_relax();
 }
 return 0;
}
