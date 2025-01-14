
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct cxl_context {unsigned long long pe; TYPE_3__* afu; TYPE_1__* elem; } ;
struct TYPE_9__ {int (* link_ok ) (int ,TYPE_3__*) ;} ;
struct TYPE_8__ {TYPE_2__* native; int dev; int adapter; int enabled; } ;
struct TYPE_7__ {int * sw_command_status; } ;
struct TYPE_6__ {int software_state; } ;


 int CXL_PSL_LLCMD_An ;
 unsigned long long CXL_SPA_SW_CMD_MASK ;
 unsigned long long CXL_SPA_SW_LINK_MASK ;
 unsigned long long CXL_SPA_SW_STATE_MASK ;
 unsigned long CXL_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 unsigned long HZ ;
 int WARN_ON (int) ;
 unsigned long long be64_to_cpup (int *) ;
 int cpu_to_be32 (unsigned long long) ;
 int cpu_to_be64 (unsigned long long) ;
 TYPE_5__* cxl_ops ;
 int cxl_p1n_write (TYPE_3__*,int ,unsigned long long) ;
 int dev_warn (int *,char*) ;
 unsigned long jiffies ;
 int pr_err (char*) ;
 int schedule () ;
 int smp_mb () ;
 int smp_wmb () ;
 int stub1 (int ,TYPE_3__*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int trace_cxl_llcmd (struct cxl_context*,unsigned long long) ;
 int trace_cxl_llcmd_done (struct cxl_context*,unsigned long long,int) ;

__attribute__((used)) static int do_process_element_cmd(struct cxl_context *ctx,
      u64 cmd, u64 pe_state)
{
 u64 state;
 unsigned long timeout = jiffies + (HZ * CXL_TIMEOUT);
 int rc = 0;

 trace_cxl_llcmd(ctx, cmd);

 WARN_ON(!ctx->afu->enabled);

 ctx->elem->software_state = cpu_to_be32(pe_state);
 smp_wmb();
 *(ctx->afu->native->sw_command_status) = cpu_to_be64(cmd | 0 | ctx->pe);
 smp_mb();
 cxl_p1n_write(ctx->afu, CXL_PSL_LLCMD_An, cmd | ctx->pe);
 while (1) {
  if (time_after_eq(jiffies, timeout)) {
   dev_warn(&ctx->afu->dev, "WARNING: Process Element Command timed out!\n");
   rc = -EBUSY;
   goto out;
  }
  if (!cxl_ops->link_ok(ctx->afu->adapter, ctx->afu)) {
   dev_warn(&ctx->afu->dev, "WARNING: Device link down, aborting Process Element Command!\n");
   rc = -EIO;
   goto out;
  }
  state = be64_to_cpup(ctx->afu->native->sw_command_status);
  if (state == ~0ULL) {
   pr_err("cxl: Error adding process element to AFU\n");
   rc = -1;
   goto out;
  }
  if ((state & (CXL_SPA_SW_CMD_MASK | CXL_SPA_SW_STATE_MASK | CXL_SPA_SW_LINK_MASK)) ==
      (cmd | (cmd >> 16) | ctx->pe))
   break;







  schedule();

 }
out:
 trace_cxl_llcmd_done(ctx, cmd, rc);
 return rc;
}
