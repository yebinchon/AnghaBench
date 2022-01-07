
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {int dev; } ;
struct TYPE_2__ {int (* link_ok ) (struct cxl*,int *) ;} ;


 int CXL_PSL_AFUSEL ;
 int CXL_PSL_AFUSEL_A ;
 int CXL_PSL_SLBIA ;
 int CXL_PSL_TLBIA ;
 unsigned long CXL_TIMEOUT ;
 int CXL_TLB_SLB_IQ_ALL ;
 int CXL_TLB_SLB_P ;
 int EBUSY ;
 int EIO ;
 unsigned long HZ ;
 int cpu_relax () ;
 TYPE_1__* cxl_ops ;
 int cxl_p1_read (struct cxl*,int ) ;
 int cxl_p1_write (struct cxl*,int ,int ) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int pr_devel (char*) ;
 int stub1 (struct cxl*,int *) ;
 int stub2 (struct cxl*,int *) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int cxl_invalidate_all_psl8(struct cxl *adapter)
{
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);

 pr_devel("CXL adapter wide TLBIA & SLBIA\n");

 cxl_p1_write(adapter, CXL_PSL_AFUSEL, CXL_PSL_AFUSEL_A);

 cxl_p1_write(adapter, CXL_PSL_TLBIA, CXL_TLB_SLB_IQ_ALL);
 while (cxl_p1_read(adapter, CXL_PSL_TLBIA) & CXL_TLB_SLB_P) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&adapter->dev, "WARNING: CXL adapter wide TLBIA timed out!\n");
   return -EBUSY;
  }
  if (!cxl_ops->link_ok(adapter, ((void*)0)))
   return -EIO;
  cpu_relax();
 }

 cxl_p1_write(adapter, CXL_PSL_SLBIA, CXL_TLB_SLB_IQ_ALL);
 while (cxl_p1_read(adapter, CXL_PSL_SLBIA) & CXL_TLB_SLB_P) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&adapter->dev, "WARNING: CXL adapter wide SLBIA timed out!\n");
   return -EBUSY;
  }
  if (!cxl_ops->link_ok(adapter, ((void*)0)))
   return -EIO;
  cpu_relax();
 }
 return 0;
}
