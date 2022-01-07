
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {int disassoc_reason; struct net_device* mesh_dev; } ;


 int EOPNOTSUPP ;
 int lbs_disconnect (struct lbs_private*,int ) ;
 struct lbs_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int lbs_cfg_disconnect(struct wiphy *wiphy, struct net_device *dev,
 u16 reason_code)
{
 struct lbs_private *priv = wiphy_priv(wiphy);

 if (dev == priv->mesh_dev)
  return -EOPNOTSUPP;


 priv->disassoc_reason = reason_code;

 return lbs_disconnect(priv, reason_code);
}
