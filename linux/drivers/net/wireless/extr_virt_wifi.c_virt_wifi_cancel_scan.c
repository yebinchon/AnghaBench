
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct virt_wifi_wiphy_priv {int * scan_request; int scan_result; } ;
struct cfg80211_scan_info {int aborted; } ;


 int cancel_delayed_work_sync (int *) ;
 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 struct virt_wifi_wiphy_priv* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void virt_wifi_cancel_scan(struct wiphy *wiphy)
{
 struct virt_wifi_wiphy_priv *priv = wiphy_priv(wiphy);

 cancel_delayed_work_sync(&priv->scan_result);

 if (priv->scan_request) {
  struct cfg80211_scan_info scan_info = { .aborted = 1 };

  cfg80211_scan_done(priv->scan_request, &scan_info);
  priv->scan_request = ((void*)0);
 }
}
