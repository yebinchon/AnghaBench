
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 int IEEE80211_NUM_ACS ;
 scalar_t__ WARN_ON (int) ;

u8 mt76_ac_to_hwq(u8 ac)
{
 static const u8 wmm_queue_map[] = {
  [131] = 0,
  [130] = 1,
  [129] = 2,
  [128] = 3,
 };

 if (WARN_ON(ac >= IEEE80211_NUM_ACS))
  return 0;

 return wmm_queue_map[ac];
}
