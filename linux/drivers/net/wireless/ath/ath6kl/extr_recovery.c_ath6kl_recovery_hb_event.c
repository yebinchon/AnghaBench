
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ seq_num; int hb_pending; } ;
struct ath6kl {TYPE_1__ fw_recovery; } ;



void ath6kl_recovery_hb_event(struct ath6kl *ar, u32 cookie)
{
 if (cookie == ar->fw_recovery.seq_num)
  ar->fw_recovery.hb_pending = 0;
}
