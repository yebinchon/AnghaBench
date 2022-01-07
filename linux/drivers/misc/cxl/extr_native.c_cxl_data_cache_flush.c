
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cxl {int dev; TYPE_1__* native; } ;
struct TYPE_4__ {int (* link_ok ) (struct cxl*,int *) ;} ;
struct TYPE_3__ {scalar_t__ no_data_cache; } ;


 int CXL_PSL_Control ;
 int CXL_PSL_Control_Fr ;
 int CXL_PSL_Control_Fs_Complete ;
 int CXL_PSL_Control_Fs_MASK ;
 unsigned long CXL_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 unsigned long HZ ;
 int cpu_relax () ;
 TYPE_2__* cxl_ops ;
 int cxl_p1_read (struct cxl*,int ) ;
 int cxl_p1_write (struct cxl*,int ,int) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int pr_devel (char*) ;
 int stub1 (struct cxl*,int *) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int cxl_data_cache_flush(struct cxl *adapter)
{
 u64 reg;
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);






 if (adapter->native->no_data_cache) {
  pr_devel("No PSL data cache. Ignoring cache flush req.\n");
  return 0;
 }

 pr_devel("Flushing data cache\n");
 reg = cxl_p1_read(adapter, CXL_PSL_Control);
 reg |= CXL_PSL_Control_Fr;
 cxl_p1_write(adapter, CXL_PSL_Control, reg);

 reg = cxl_p1_read(adapter, CXL_PSL_Control);
 while ((reg & CXL_PSL_Control_Fs_MASK) != CXL_PSL_Control_Fs_Complete) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&adapter->dev, "WARNING: cache flush timed out!\n");
   return -EBUSY;
  }

  if (!cxl_ops->link_ok(adapter, ((void*)0))) {
   dev_warn(&adapter->dev, "WARNING: link down when flushing cache\n");
   return -EIO;
  }
  cpu_relax();
  reg = cxl_p1_read(adapter, CXL_PSL_Control);
 }

 reg &= ~CXL_PSL_Control_Fr;
 cxl_p1_write(adapter, CXL_PSL_Control, reg);
 return 0;
}
