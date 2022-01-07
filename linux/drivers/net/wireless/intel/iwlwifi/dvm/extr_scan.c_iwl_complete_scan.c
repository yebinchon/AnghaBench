
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int * scan_request; int * scan_vif; int scan_type; int hw; } ;
struct cfg80211_scan_info {int aborted; } ;


 int IWL_DEBUG_SCAN (struct iwl_priv*,char*) ;
 int IWL_SCAN_NORMAL ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;

__attribute__((used)) static void iwl_complete_scan(struct iwl_priv *priv, bool aborted)
{
 struct cfg80211_scan_info info = {
  .aborted = aborted,
 };


 if (priv->scan_request) {
  IWL_DEBUG_SCAN(priv, "Complete scan in mac80211\n");
  ieee80211_scan_completed(priv->hw, &info);
 }

 priv->scan_type = IWL_SCAN_NORMAL;
 priv->scan_vif = ((void*)0);
 priv->scan_request = ((void*)0);
}
