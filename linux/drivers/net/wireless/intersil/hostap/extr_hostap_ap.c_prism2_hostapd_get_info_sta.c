
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int last_rx; int users; } ;
struct TYPE_3__ {int inactive_sec; } ;
struct TYPE_4__ {TYPE_1__ get_info_sta; } ;
struct prism2_hostapd_param {TYPE_2__ u; int sta_addr; } ;
struct ap_data {int sta_table_lock; } ;


 int ENOENT ;
 int HZ ;
 struct sta_info* ap_get_sta (struct ap_data*,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int prism2_hostapd_get_info_sta(struct ap_data *ap,
           struct prism2_hostapd_param *param)
{
 struct sta_info *sta;

 spin_lock_bh(&ap->sta_table_lock);
 sta = ap_get_sta(ap, param->sta_addr);
 if (sta)
  atomic_inc(&sta->users);
 spin_unlock_bh(&ap->sta_table_lock);

 if (!sta)
  return -ENOENT;

 param->u.get_info_sta.inactive_sec = (jiffies - sta->last_rx) / HZ;

 atomic_dec(&sta->users);

 return 1;
}
