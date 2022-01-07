
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {int dev; int adapter; } ;
struct TYPE_2__ {int (* link_ok ) (int ,struct cxl_afu*) ;} ;


 int CXL_AFU_Cntl_An ;
 int CXL_AFU_Cntl_An_ES_Disabled ;
 int CXL_AFU_Cntl_An_ES_MASK ;
 int CXL_PSL9_DSISR_An_TF ;
 int CXL_PSL_DAR_An ;
 int CXL_PSL_DSISR_An ;
 int CXL_PSL_DSISR_TRANS ;
 int CXL_PSL_SCNTL_An ;
 int CXL_PSL_SCNTL_An_Pc ;
 int CXL_PSL_SCNTL_An_Ps_MASK ;
 int CXL_PSL_SCNTL_An_Ps_Pending ;
 int CXL_PSL_TFC_An ;
 int CXL_PSL_TFC_An_A ;
 int CXL_PSL_TFC_An_AE ;
 unsigned long CXL_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 unsigned long HZ ;
 int WARN (int,char*) ;
 int cpu_relax () ;
 int cxl_afu_disable (struct cxl_afu*) ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;
 TYPE_1__* cxl_ops ;
 int cxl_p1n_read (struct cxl_afu*,int ) ;
 int cxl_p1n_write (struct cxl_afu*,int ,int) ;
 int cxl_p2n_read (struct cxl_afu*,int ) ;
 int cxl_p2n_write (struct cxl_afu*,int ,int ) ;
 int dev_notice (int *,char*,int,...) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int local_clock () ;
 int pr_devel (char*,...) ;
 int pr_devel_ratelimited (char*,int,int) ;
 int stub1 (int ,struct cxl_afu*) ;
 int stub2 (int ,struct cxl_afu*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int trace_cxl_psl_ctrl (struct cxl_afu*,int) ;
 int trace_cxl_psl_ctrl_done (struct cxl_afu*,int,int) ;

int cxl_psl_purge(struct cxl_afu *afu)
{
 u64 PSL_CNTL = cxl_p1n_read(afu, CXL_PSL_SCNTL_An);
 u64 AFU_Cntl = cxl_p2n_read(afu, CXL_AFU_Cntl_An);
 u64 dsisr, dar;
 u64 start, end;
 u64 trans_fault = 0x0ULL;
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
 int rc = 0;

 trace_cxl_psl_ctrl(afu, CXL_PSL_SCNTL_An_Pc);

 pr_devel("PSL purge request\n");

 if (cxl_is_power8())
  trans_fault = CXL_PSL_DSISR_TRANS;
 if (cxl_is_power9())
  trans_fault = CXL_PSL9_DSISR_An_TF;

 if (!cxl_ops->link_ok(afu->adapter, afu)) {
  dev_warn(&afu->dev, "PSL Purge called with link down, ignoring\n");
  rc = -EIO;
  goto out;
 }

 if ((AFU_Cntl & CXL_AFU_Cntl_An_ES_MASK) != CXL_AFU_Cntl_An_ES_Disabled) {
  WARN(1, "psl_purge request while AFU not disabled!\n");
  cxl_afu_disable(afu);
 }

 cxl_p1n_write(afu, CXL_PSL_SCNTL_An,
         PSL_CNTL | CXL_PSL_SCNTL_An_Pc);
 start = local_clock();
 PSL_CNTL = cxl_p1n_read(afu, CXL_PSL_SCNTL_An);
 while ((PSL_CNTL & CXL_PSL_SCNTL_An_Ps_MASK)
   == CXL_PSL_SCNTL_An_Ps_Pending) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&afu->dev, "WARNING: PSL Purge timed out!\n");
   rc = -EBUSY;
   goto out;
  }
  if (!cxl_ops->link_ok(afu->adapter, afu)) {
   rc = -EIO;
   goto out;
  }

  dsisr = cxl_p2n_read(afu, CXL_PSL_DSISR_An);
  pr_devel_ratelimited("PSL purging... PSL_CNTL: 0x%016llx  PSL_DSISR: 0x%016llx\n",
         PSL_CNTL, dsisr);

  if (dsisr & trans_fault) {
   dar = cxl_p2n_read(afu, CXL_PSL_DAR_An);
   dev_notice(&afu->dev, "PSL purge terminating pending translation, DSISR: 0x%016llx, DAR: 0x%016llx\n",
       dsisr, dar);
   cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_AE);
  } else if (dsisr) {
   dev_notice(&afu->dev, "PSL purge acknowledging pending non-translation fault, DSISR: 0x%016llx\n",
       dsisr);
   cxl_p2n_write(afu, CXL_PSL_TFC_An, CXL_PSL_TFC_An_A);
  } else {
   cpu_relax();
  }
  PSL_CNTL = cxl_p1n_read(afu, CXL_PSL_SCNTL_An);
 }
 end = local_clock();
 pr_devel("PSL purged in %lld ns\n", end - start);

 cxl_p1n_write(afu, CXL_PSL_SCNTL_An,
         PSL_CNTL & ~CXL_PSL_SCNTL_An_Pc);
out:
 trace_cxl_psl_ctrl_done(afu, CXL_PSL_SCNTL_An_Pc, rc);
 return rc;
}
