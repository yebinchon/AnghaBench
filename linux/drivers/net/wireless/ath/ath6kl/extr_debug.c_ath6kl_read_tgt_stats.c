
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int flags; } ;
struct ath6kl {int sem; int event_wq; int wmi; } ;


 int EBUSY ;
 int EIO ;
 int ETIMEDOUT ;
 int STATS_UPDATE_PEND ;
 int WMI_TIMEOUT ;
 scalar_t__ ath6kl_wmi_get_stats_cmd (int ,int ) ;
 scalar_t__ down_interruptible (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int up (int *) ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

int ath6kl_read_tgt_stats(struct ath6kl *ar, struct ath6kl_vif *vif)
{
 long left;

 if (down_interruptible(&ar->sem))
  return -EBUSY;

 set_bit(STATS_UPDATE_PEND, &vif->flags);

 if (ath6kl_wmi_get_stats_cmd(ar->wmi, 0)) {
  up(&ar->sem);
  return -EIO;
 }

 left = wait_event_interruptible_timeout(ar->event_wq,
      !test_bit(STATS_UPDATE_PEND,
      &vif->flags), WMI_TIMEOUT);

 up(&ar->sem);

 if (left <= 0)
  return -ETIMEDOUT;

 return 0;
}
