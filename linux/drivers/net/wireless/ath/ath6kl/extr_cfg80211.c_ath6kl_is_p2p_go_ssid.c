
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ const* variable; } ;
struct TYPE_4__ {TYPE_1__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;


 scalar_t__ P2P_WILDCARD_SSID_LEN ;

__attribute__((used)) static bool ath6kl_is_p2p_go_ssid(const u8 *buf, size_t len)
{
 const struct ieee80211_mgmt *mgmt;
 mgmt = (const struct ieee80211_mgmt *) buf;


 if (buf + len >= &mgmt->u.probe_resp.variable[1] &&
     (mgmt->u.probe_resp.variable[1] > P2P_WILDCARD_SSID_LEN)) {
  return 1;
 }

 return 0;
}
