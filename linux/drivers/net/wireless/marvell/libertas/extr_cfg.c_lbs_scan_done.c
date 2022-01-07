
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int * scan_req; scalar_t__ internal_scan; } ;
struct cfg80211_scan_info {int aborted; } ;


 int WARN_ON (int) ;
 int cfg80211_scan_done (int *,struct cfg80211_scan_info*) ;
 int kfree (int *) ;

void lbs_scan_done(struct lbs_private *priv)
{
 WARN_ON(!priv->scan_req);

 if (priv->internal_scan) {
  kfree(priv->scan_req);
 } else {
  struct cfg80211_scan_info info = {
   .aborted = 0,
  };

  cfg80211_scan_done(priv->scan_req, &info);
 }

 priv->scan_req = ((void*)0);
}
