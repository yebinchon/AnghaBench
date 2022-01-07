
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int flags; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_type; int adapter; scalar_t__ media_connected; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 int EINVAL ;
 int ENOTSUPP ;
 int ERROR ;
 int MSG ;
 scalar_t__ MWIFIEX_BSS_TYPE_STA ;
 int MWIFIEX_TDLS_DISABLE_LINK ;
 int MWIFIEX_TDLS_ENABLE_LINK ;





 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WIPHY_FLAG_TDLS_EXTERNAL_SETUP ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_tdls_oper (struct mwifiex_private*,int const*,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_tdls_oper(struct wiphy *wiphy, struct net_device *dev,
      const u8 *peer, enum nl80211_tdls_operation action)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS) ||
     !(wiphy->flags & WIPHY_FLAG_TDLS_EXTERNAL_SETUP))
  return -ENOTSUPP;


 if (!(priv->bss_type == MWIFIEX_BSS_TYPE_STA && priv->media_connected))
  return -ENOTSUPP;

 mwifiex_dbg(priv->adapter, MSG,
      "TDLS peer=%pM, oper=%d\n", peer, action);

 switch (action) {
 case 130:
  action = MWIFIEX_TDLS_ENABLE_LINK;
  break;
 case 132:
  action = MWIFIEX_TDLS_DISABLE_LINK;
  break;
 case 128:

  mwifiex_dbg(priv->adapter, ERROR,
       "tdls_oper: teardown from driver not supported\n");
  return -EINVAL;
 case 129:

  mwifiex_dbg(priv->adapter, ERROR,
       "tdls_oper: setup from driver not supported\n");
  return -EINVAL;
 case 131:

  mwifiex_dbg(priv->adapter, ERROR,
       "tdls_oper: discovery from driver not supported\n");
  return -EINVAL;
 default:
  mwifiex_dbg(priv->adapter, ERROR,
       "tdls_oper: operation not supported\n");
  return -ENOTSUPP;
 }

 return mwifiex_tdls_oper(priv, peer, action);
}
