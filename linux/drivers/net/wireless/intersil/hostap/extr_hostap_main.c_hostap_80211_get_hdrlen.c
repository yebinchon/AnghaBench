
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 scalar_t__ ieee80211_has_a4 (int ) ;
 scalar_t__ ieee80211_is_ack (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_cts (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;

int hostap_80211_get_hdrlen(__le16 fc)
{
 if (ieee80211_is_data(fc) && ieee80211_has_a4 (fc))
  return 30;
 else if (ieee80211_is_cts(fc) || ieee80211_is_ack(fc))
  return 10;
 else if (ieee80211_is_ctl(fc))
  return 16;

 return 24;
}
