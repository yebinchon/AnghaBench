
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int cfg_bssid; int media_connected; } ;


 int ENOENT ;
 int ETH_ALEN ;
 scalar_t__ memcmp (int const*,int ,int ) ;
 int mwifiex_dump_station_info (struct mwifiex_private*,int *,struct station_info*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;

__attribute__((used)) static int
mwifiex_cfg80211_get_station(struct wiphy *wiphy, struct net_device *dev,
        const u8 *mac, struct station_info *sinfo)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);

 if (!priv->media_connected)
  return -ENOENT;
 if (memcmp(mac, priv->cfg_bssid, ETH_ALEN))
  return -ENOENT;

 return mwifiex_dump_station_info(priv, ((void*)0), sinfo);
}
