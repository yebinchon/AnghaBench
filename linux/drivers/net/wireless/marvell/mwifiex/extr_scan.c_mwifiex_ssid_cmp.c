
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_ssid {scalar_t__ ssid_len; int ssid; } ;
typedef int s32 ;


 int memcmp (int ,int ,scalar_t__) ;

s32
mwifiex_ssid_cmp(struct cfg80211_ssid *ssid1, struct cfg80211_ssid *ssid2)
{
 if (!ssid1 || !ssid2 || (ssid1->ssid_len != ssid2->ssid_len))
  return -1;
 return memcmp(ssid1->ssid, ssid2->ssid, ssid1->ssid_len);
}
