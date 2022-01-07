
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ err_reason; int enable; } ;
struct ath6kl {scalar_t__ state; TYPE_1__ fw_recovery; } ;


 scalar_t__ ATH6KL_STATE_ON ;
 scalar_t__ ATH6KL_STATE_RECOVERY ;
 int WARN_ON (int) ;
 int ath6kl_init_hw_restart (struct ath6kl*) ;
 int ath6kl_recovery_cleanup (struct ath6kl*) ;

void ath6kl_recovery_suspend(struct ath6kl *ar)
{
 if (!ar->fw_recovery.enable)
  return;

 ath6kl_recovery_cleanup(ar);

 if (!ar->fw_recovery.err_reason)
  return;


 ar->fw_recovery.err_reason = 0;
 WARN_ON(ar->state != ATH6KL_STATE_ON);
 ar->state = ATH6KL_STATE_RECOVERY;
 ath6kl_init_hw_restart(ar);
 ar->state = ATH6KL_STATE_ON;
}
