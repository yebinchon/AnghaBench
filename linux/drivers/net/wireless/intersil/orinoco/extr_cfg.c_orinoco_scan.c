
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct orinoco_private {struct cfg80211_scan_request* scan_request; } ;
struct cfg80211_scan_request {int ssids; } ;


 int EBUSY ;
 int EINVAL ;
 int orinoco_hw_trigger_scan (struct orinoco_private*,int ) ;
 struct orinoco_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int orinoco_scan(struct wiphy *wiphy,
   struct cfg80211_scan_request *request)
{
 struct orinoco_private *priv = wiphy_priv(wiphy);
 int err;

 if (!request)
  return -EINVAL;

 if (priv->scan_request && priv->scan_request != request)
  return -EBUSY;

 priv->scan_request = request;

 err = orinoco_hw_trigger_scan(priv, request->ssids);

 if (err)
  priv->scan_request = ((void*)0);

 return err;
}
