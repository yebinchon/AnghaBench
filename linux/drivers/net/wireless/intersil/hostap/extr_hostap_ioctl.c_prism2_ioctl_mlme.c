
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int cmd; int reason_code; } ;
struct TYPE_4__ {TYPE_1__ mlme; } ;
struct prism2_hostapd_param {int sta_addr; TYPE_2__ u; } ;
typedef int local_info_t ;
typedef int __le16 ;


 int EOPNOTSUPP ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_STYPE_DISASSOC ;


 int cpu_to_le16 (int ) ;
 int prism2_sta_send_mgmt (int *,int ,int ,int *,int) ;

__attribute__((used)) static int prism2_ioctl_mlme(local_info_t *local,
        struct prism2_hostapd_param *param)
{
 __le16 reason;

 reason = cpu_to_le16(param->u.mlme.reason_code);
 switch (param->u.mlme.cmd) {
 case 129:
  return prism2_sta_send_mgmt(local, param->sta_addr,
         IEEE80211_STYPE_DEAUTH,
         (u8 *) &reason, 2);
 case 128:
  return prism2_sta_send_mgmt(local, param->sta_addr,
         IEEE80211_STYPE_DISASSOC,
         (u8 *) &reason, 2);
 default:
  return -EOPNOTSUPP;
 }
}
