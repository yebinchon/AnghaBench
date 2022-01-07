
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ar9170 {int needs_full_reset; TYPE_2__* hw; } ;
typedef size_t ssize_t ;
struct TYPE_6__ {int chan; } ;
struct TYPE_4__ {TYPE_3__ chandef; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int CARL9170_RR_USER_REQUEST ;
 int EAGAIN ;
 size_t EINVAL ;
 int IS_STARTED (struct ar9170*) ;
 int carl9170_mac_reset (struct ar9170*) ;
 int carl9170_restart (struct ar9170*,int ) ;
 int carl9170_set_channel (struct ar9170*,int ,int ) ;
 int cfg80211_get_chandef_type (TYPE_3__*) ;

__attribute__((used)) static ssize_t carl9170_debugfs_bug_write(struct ar9170 *ar, const char *buf,
       size_t count)
{
 int err;

 if (count < 1)
  return -EINVAL;

 switch (buf[0]) {
 case 'F':
  ar->needs_full_reset = 1;
  break;

 case 'R':
  if (!IS_STARTED(ar)) {
   err = -EAGAIN;
   goto out;
  }

  ar->needs_full_reset = 0;
  break;

 case 'M':
  err = carl9170_mac_reset(ar);
  if (err < 0)
   count = err;

  goto out;

 case 'P':
  err = carl9170_set_channel(ar, ar->hw->conf.chandef.chan,
   cfg80211_get_chandef_type(&ar->hw->conf.chandef));
  if (err < 0)
   count = err;

  goto out;

 default:
  return -EINVAL;
 }

 carl9170_restart(ar, CARL9170_RR_USER_REQUEST);

out:
 return count;
}
