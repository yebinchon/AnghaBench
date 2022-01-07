
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl {int dev; } ;
struct TYPE_2__ {int (* link_ok ) (struct cxl*,int *) ;} ;


 unsigned long CXL_TIMEOUT ;
 int CXL_XSL9_IERAT ;
 int CXL_XSL9_IERAT_IALL ;
 int CXL_XSL9_IERAT_IINPROG ;
 int CXL_XSL9_IERAT_INVR ;
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
 scalar_t__ radix_enabled () ;
 int stub1 (struct cxl*,int *) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int cxl_invalidate_all_psl9(struct cxl *adapter)
{
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
 u64 ierat;

 pr_devel("CXL adapter - invalidation of all ERAT entries\n");


 ierat = CXL_XSL9_IERAT_IALL;
 if (radix_enabled())
  ierat |= CXL_XSL9_IERAT_INVR;
 cxl_p1_write(adapter, CXL_XSL9_IERAT, ierat);

 while (cxl_p1_read(adapter, CXL_XSL9_IERAT) & CXL_XSL9_IERAT_IINPROG) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&adapter->dev,
   "WARNING: CXL adapter invalidation of all ERAT entries timed out!\n");
   return -EBUSY;
  }
  if (!cxl_ops->link_ok(adapter, ((void*)0)))
   return -EIO;
  cpu_relax();
 }
 return 0;
}
