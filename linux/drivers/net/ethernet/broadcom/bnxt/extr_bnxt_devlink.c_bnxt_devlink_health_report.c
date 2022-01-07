
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_fw_reporter_ctx {unsigned long sp_event; } ;
struct bnxt_fw_health {int fw_fatal_reporter; int fw_reset_reporter; } ;
struct bnxt {int state; struct bnxt_fw_health* fw_health; } ;




 int BNXT_STATE_FW_FATAL_COND ;
 int devlink_health_report (int ,char*,struct bnxt_fw_reporter_ctx*) ;
 int test_bit (int ,int *) ;

void bnxt_devlink_health_report(struct bnxt *bp, unsigned long event)
{
 struct bnxt_fw_health *fw_health = bp->fw_health;
 struct bnxt_fw_reporter_ctx fw_reporter_ctx;

 if (!fw_health)
  return;

 fw_reporter_ctx.sp_event = event;
 switch (event) {
 case 128:
  if (test_bit(BNXT_STATE_FW_FATAL_COND, &bp->state)) {
   if (!fw_health->fw_fatal_reporter)
    return;

   devlink_health_report(fw_health->fw_fatal_reporter,
           "FW fatal async event received",
           &fw_reporter_ctx);
   return;
  }
  if (!fw_health->fw_reset_reporter)
   return;

  devlink_health_report(fw_health->fw_reset_reporter,
          "FW non-fatal reset event received",
          &fw_reporter_ctx);
  return;

 case 129:
  if (!fw_health->fw_fatal_reporter)
   return;

  devlink_health_report(fw_health->fw_fatal_reporter,
          "FW fatal error reported",
          &fw_reporter_ctx);
  return;
 }
}
