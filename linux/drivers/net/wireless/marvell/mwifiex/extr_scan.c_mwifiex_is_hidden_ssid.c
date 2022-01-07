
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_ssid {int ssid_len; scalar_t__* ssid; } ;



__attribute__((used)) static bool mwifiex_is_hidden_ssid(struct cfg80211_ssid *ssid)
{
 int idx;

 for (idx = 0; idx < ssid->ssid_len; idx++) {
  if (ssid->ssid[idx])
   return 0;
 }

 return 1;
}
