
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_health_reporter {int dummy; } ;
struct bnxt_fw_reporter_ctx {unsigned long sp_event; } ;
struct bnxt {int dummy; } ;


 unsigned long BNXT_FW_EXCEPTION_SP_EVENT ;
 unsigned long BNXT_FW_RESET_NOTIFY_SP_EVENT ;
 int EOPNOTSUPP ;
 int bnxt_fw_exception (struct bnxt*) ;
 int bnxt_fw_reset (struct bnxt*) ;
 struct bnxt* devlink_health_reporter_priv (struct devlink_health_reporter*) ;

__attribute__((used)) static int bnxt_fw_fatal_recover(struct devlink_health_reporter *reporter,
     void *priv_ctx)
{
 struct bnxt *bp = devlink_health_reporter_priv(reporter);
 struct bnxt_fw_reporter_ctx *fw_reporter_ctx = priv_ctx;
 unsigned long event;

 if (!priv_ctx)
  return -EOPNOTSUPP;

 event = fw_reporter_ctx->sp_event;
 if (event == BNXT_FW_RESET_NOTIFY_SP_EVENT)
  bnxt_fw_reset(bp);
 else if (event == BNXT_FW_EXCEPTION_SP_EVENT)
  bnxt_fw_exception(bp);

 return 0;
}
