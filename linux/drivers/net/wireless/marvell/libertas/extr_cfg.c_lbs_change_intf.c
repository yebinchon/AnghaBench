
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {TYPE_1__* wdev; scalar_t__ iface_running; struct net_device* mesh_dev; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int iftype; } ;


 int EOPNOTSUPP ;



 int lbs_set_iface_type (struct lbs_private*,int) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_change_intf(struct wiphy *wiphy, struct net_device *dev,
 enum nl80211_iftype type,
        struct vif_params *params)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 int ret = 0;

 if (dev == priv->mesh_dev)
  return -EOPNOTSUPP;

 switch (type) {
 case 129:
 case 128:
 case 130:
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (priv->iface_running)
  ret = lbs_set_iface_type(priv, type);

 if (!ret)
  priv->wdev->iftype = type;

 return ret;
}
