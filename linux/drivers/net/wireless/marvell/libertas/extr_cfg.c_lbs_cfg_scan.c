
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct lbs_private {scalar_t__ surpriseremoved; int scan_work; scalar_t__ scan_req; } ;
struct cfg80211_scan_request {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int _internal_start_scan (struct lbs_private*,int,struct cfg80211_scan_request*) ;
 scalar_t__ delayed_work_pending (int *) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_scan(struct wiphy *wiphy,
 struct cfg80211_scan_request *request)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 int ret = 0;

 if (priv->scan_req || delayed_work_pending(&priv->scan_work)) {

  ret = -EAGAIN;
  goto out;
 }

 _internal_start_scan(priv, 0, request);

 if (priv->surpriseremoved)
  ret = -EIO;

 out:
 return ret;
}
