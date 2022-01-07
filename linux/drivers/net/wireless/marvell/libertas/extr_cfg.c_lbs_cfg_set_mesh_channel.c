
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {struct net_device* mesh_dev; } ;
struct ieee80211_channel {int hw_value; } ;


 int ENOTSUPP ;
 int lbs_mesh_set_channel (struct lbs_private*,int ) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_set_mesh_channel(struct wiphy *wiphy,
        struct net_device *netdev,
        struct ieee80211_channel *channel)
{
 struct lbs_private *priv = wiphy_priv(wiphy);
 int ret = -ENOTSUPP;

 if (netdev != priv->mesh_dev)
  goto out;

 ret = lbs_mesh_set_channel(priv, channel->hw_value);

 out:
 return ret;
}
