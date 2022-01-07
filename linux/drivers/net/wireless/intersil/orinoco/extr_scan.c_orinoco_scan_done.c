
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int * scan_request; } ;
struct cfg80211_scan_info {int aborted; } ;


 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;

void orinoco_scan_done(struct orinoco_private *priv, bool abort)
{
 if (priv->scan_request) {
  struct cfg80211_scan_info info = {
   .aborted = abort,
  };

  cfg80211_scan_done(priv->scan_request, &info);
  priv->scan_request = ((void*)0);
 }
}
