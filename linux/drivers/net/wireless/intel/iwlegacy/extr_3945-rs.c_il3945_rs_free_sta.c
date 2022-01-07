
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il3945_rs_sta {int rate_scale_flush; } ;
struct ieee80211_sta {int dummy; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void
il3945_rs_free_sta(void *il_priv, struct ieee80211_sta *sta, void *il_sta)
{
 struct il3945_rs_sta *rs_sta = il_sta;






 del_timer_sync(&rs_sta->rate_scale_flush);
}
