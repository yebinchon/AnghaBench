
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int wep_enabled; } ;
struct mwifiex_private {scalar_t__ bss_type; int adapter; int wep_key_curr_index; TYPE_1__ sec_info; } ;


 int EFAULT ;
 int ERROR ;
 scalar_t__ MWIFIEX_BSS_TYPE_UAP ;
 int mwifiex_dbg (int ,int ,char*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 scalar_t__ mwifiex_set_encode (struct mwifiex_private*,int *,int *,int ,int ,int *,int ) ;

__attribute__((used)) static int
mwifiex_cfg80211_set_default_key(struct wiphy *wiphy, struct net_device *netdev,
     u8 key_index, bool unicast,
     bool multicast)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(netdev);


 if (!priv->sec_info.wep_enabled)
  return 0;

 if (priv->bss_type == MWIFIEX_BSS_TYPE_UAP) {
  priv->wep_key_curr_index = key_index;
 } else if (mwifiex_set_encode(priv, ((void*)0), ((void*)0), 0, key_index,
          ((void*)0), 0)) {
  mwifiex_dbg(priv->adapter, ERROR, "set default Tx key index\n");
  return -EFAULT;
 }

 return 0;
}
