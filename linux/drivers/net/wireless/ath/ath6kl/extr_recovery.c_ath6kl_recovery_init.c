
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_fw_recovery {int hb_pending; scalar_t__ hb_poll; int hb_timer; scalar_t__ hb_misscnt; scalar_t__ seq_num; int recovery_work; } ;
struct ath6kl {struct ath6kl_fw_recovery fw_recovery; int flag; } ;


 int INIT_WORK (int *,int ) ;
 int RECOVERY_CLEANUP ;
 int TIMER_DEFERRABLE ;
 int ath6kl_recovery_hb_timer ;
 int ath6kl_recovery_work ;
 int clear_bit (int ,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

void ath6kl_recovery_init(struct ath6kl *ar)
{
 struct ath6kl_fw_recovery *recovery = &ar->fw_recovery;

 clear_bit(RECOVERY_CLEANUP, &ar->flag);
 INIT_WORK(&recovery->recovery_work, ath6kl_recovery_work);
 recovery->seq_num = 0;
 recovery->hb_misscnt = 0;
 ar->fw_recovery.hb_pending = 0;
 timer_setup(&ar->fw_recovery.hb_timer, ath6kl_recovery_hb_timer,
      TIMER_DEFERRABLE);

 if (ar->fw_recovery.hb_poll)
  mod_timer(&ar->fw_recovery.hb_timer, jiffies +
     msecs_to_jiffies(ar->fw_recovery.hb_poll));
}
