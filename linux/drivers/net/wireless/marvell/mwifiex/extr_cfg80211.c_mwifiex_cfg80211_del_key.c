
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int adapter; } ;


 int EFAULT ;
 int ERROR ;
 int INFO ;
 int mwifiex_dbg (int ,int ,char*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 scalar_t__ mwifiex_set_encode (struct mwifiex_private*,int *,int *,int ,int,int const*,int) ;

__attribute__((used)) static int
mwifiex_cfg80211_del_key(struct wiphy *wiphy, struct net_device *netdev,
    u8 key_index, bool pairwise, const u8 *mac_addr)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(netdev);
 static const u8 bc_mac[] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 const u8 *peer_mac = pairwise ? mac_addr : bc_mac;

 if (mwifiex_set_encode(priv, ((void*)0), ((void*)0), 0, key_index, peer_mac, 1)) {
  mwifiex_dbg(priv->adapter, ERROR, "deleting the crypto keys\n");
  return -EFAULT;
 }

 mwifiex_dbg(priv->adapter, INFO, "info: crypto keys deleted\n");
 return 0;
}
