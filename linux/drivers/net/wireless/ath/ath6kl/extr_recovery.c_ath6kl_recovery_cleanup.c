
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recovery_work; int hb_timer; int enable; } ;
struct ath6kl {TYPE_1__ fw_recovery; int flag; } ;


 int RECOVERY_CLEANUP ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int set_bit (int ,int *) ;

void ath6kl_recovery_cleanup(struct ath6kl *ar)
{
 if (!ar->fw_recovery.enable)
  return;

 set_bit(RECOVERY_CLEANUP, &ar->flag);

 del_timer_sync(&ar->fw_recovery.hb_timer);
 cancel_work_sync(&ar->fw_recovery.recovery_work);
}
