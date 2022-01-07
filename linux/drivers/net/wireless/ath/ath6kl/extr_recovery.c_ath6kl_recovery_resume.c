
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hb_pending; int hb_poll; int hb_timer; scalar_t__ hb_misscnt; scalar_t__ seq_num; int enable; } ;
struct ath6kl {TYPE_1__ fw_recovery; int flag; } ;


 int RECOVERY_CLEANUP ;
 int clear_bit (int ,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

void ath6kl_recovery_resume(struct ath6kl *ar)
{
 if (!ar->fw_recovery.enable)
  return;

 clear_bit(RECOVERY_CLEANUP, &ar->flag);

 if (!ar->fw_recovery.hb_poll)
  return;

 ar->fw_recovery.hb_pending = 0;
 ar->fw_recovery.seq_num = 0;
 ar->fw_recovery.hb_misscnt = 0;
 mod_timer(&ar->fw_recovery.hb_timer,
    jiffies + msecs_to_jiffies(ar->fw_recovery.hb_poll));
}
