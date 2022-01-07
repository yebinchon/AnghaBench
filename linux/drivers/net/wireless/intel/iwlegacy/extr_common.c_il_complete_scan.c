
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * scan_request; int * scan_vif; int hw; } ;
struct cfg80211_scan_info {int aborted; } ;


 int D_SCAN (char*) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;

__attribute__((used)) static void
il_complete_scan(struct il_priv *il, bool aborted)
{
 struct cfg80211_scan_info info = {
  .aborted = aborted,
 };


 if (il->scan_request) {
  D_SCAN("Complete scan in mac80211\n");
  ieee80211_scan_completed(il->hw, &info);
 }

 il->scan_vif = ((void*)0);
 il->scan_request = ((void*)0);
}
