
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct virt_wifi_wiphy_priv {int scan_result; struct cfg80211_scan_request* scan_request; scalar_t__ being_deleted; } ;
struct cfg80211_scan_request {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int schedule_delayed_work (int *,int) ;
 int wiphy_debug (struct wiphy*,char*) ;
 struct virt_wifi_wiphy_priv* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int virt_wifi_scan(struct wiphy *wiphy,
     struct cfg80211_scan_request *request)
{
 struct virt_wifi_wiphy_priv *priv = wiphy_priv(wiphy);

 wiphy_debug(wiphy, "scan\n");

 if (priv->scan_request || priv->being_deleted)
  return -EBUSY;

 priv->scan_request = request;
 schedule_delayed_work(&priv->scan_result, HZ * 2);

 return 0;
}
