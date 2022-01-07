
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int cfg_bssid; int adapter; } ;


 int EFAULT ;
 int MSG ;
 int eth_zero_addr (int ) ;
 int mwifiex_dbg (int ,int ,char*,int ) ;
 scalar_t__ mwifiex_deauthenticate (struct mwifiex_private*,int *) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int
mwifiex_cfg80211_leave_ibss(struct wiphy *wiphy, struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 mwifiex_dbg(priv->adapter, MSG, "info: disconnecting from essid %pM\n",
      priv->cfg_bssid);
 if (mwifiex_deauthenticate(priv, ((void*)0)))
  return -EFAULT;

 eth_zero_addr(priv->cfg_bssid);

 return 0;
}
