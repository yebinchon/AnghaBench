
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recovery_work; int err_reason; int enable; } ;
struct ath6kl {scalar_t__ state; TYPE_1__ fw_recovery; int ath6kl_wq; int flag; } ;
typedef enum ath6kl_fw_err { ____Placeholder_ath6kl_fw_err } ath6kl_fw_err ;


 int ATH6KL_DBG_RECOVERY ;
 scalar_t__ ATH6KL_STATE_RECOVERY ;
 int RECOVERY_CLEANUP ;
 int ath6kl_dbg (int ,char*,int) ;
 int queue_work (int ,int *) ;
 int set_bit (int,int *) ;
 int test_bit (int ,int *) ;

void ath6kl_recovery_err_notify(struct ath6kl *ar, enum ath6kl_fw_err reason)
{
 if (!ar->fw_recovery.enable)
  return;

 ath6kl_dbg(ATH6KL_DBG_RECOVERY, "Fw error detected, reason:%d\n",
     reason);

 set_bit(reason, &ar->fw_recovery.err_reason);

 if (!test_bit(RECOVERY_CLEANUP, &ar->flag) &&
     ar->state != ATH6KL_STATE_RECOVERY)
  queue_work(ar->ath6kl_wq, &ar->fw_recovery.recovery_work);
}
