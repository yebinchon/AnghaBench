
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ iw_mode; int dev; int bssid; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;


 int IEEE80211_STYPE_DEAUTH ;
 scalar_t__ IW_MODE_INFRA ;
 int SIOCGIWAP ;
 int cpu_to_le16 (int ) ;
 int eth_zero_addr (int ) ;
 scalar_t__ ether_addr_equal (int ,char*) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int prism2_sta_send_mgmt (TYPE_2__*,int ,int ,int *,int) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

int prism2_sta_deauth(local_info_t *local, u16 reason)
{
 union iwreq_data wrqu;
 int ret;
 __le16 val = cpu_to_le16(reason);

 if (local->iw_mode != IW_MODE_INFRA ||
     is_zero_ether_addr(local->bssid) ||
     ether_addr_equal(local->bssid, "\x44\x44\x44\x44\x44\x44"))
  return 0;

 ret = prism2_sta_send_mgmt(local, local->bssid, IEEE80211_STYPE_DEAUTH,
       (u8 *) &val, 2);
 eth_zero_addr(wrqu.ap_addr.sa_data);
 wireless_send_event(local->dev, SIOCGIWAP, &wrqu, ((void*)0));
 return ret;
}
