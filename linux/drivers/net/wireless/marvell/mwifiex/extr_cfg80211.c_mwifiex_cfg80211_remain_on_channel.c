
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int cookie; struct ieee80211_channel chan; } ;
struct mwifiex_private {int adapter; TYPE_1__ roc_cfg; } ;


 int EBUSY ;
 int EINVAL ;
 int ERROR ;
 int GFP_ATOMIC ;
 int HostCmd_ACT_GEN_SET ;
 int INFO ;
 int cfg80211_ready_on_channel (struct wireless_dev*,int,struct ieee80211_channel*,unsigned int,int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (int ) ;
 int mwifiex_remain_on_chan_cfg (struct mwifiex_private*,int ,struct ieee80211_channel*,unsigned int) ;
 int prandom_u32 () ;

__attribute__((used)) static int
mwifiex_cfg80211_remain_on_channel(struct wiphy *wiphy,
       struct wireless_dev *wdev,
       struct ieee80211_channel *chan,
       unsigned int duration, u64 *cookie)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(wdev->netdev);
 int ret;

 if (!chan || !cookie) {
  mwifiex_dbg(priv->adapter, ERROR, "Invalid parameter for ROC\n");
  return -EINVAL;
 }

 if (priv->roc_cfg.cookie) {
  mwifiex_dbg(priv->adapter, INFO,
       "info: ongoing ROC, cookie = 0x%llx\n",
       priv->roc_cfg.cookie);
  return -EBUSY;
 }

 ret = mwifiex_remain_on_chan_cfg(priv, HostCmd_ACT_GEN_SET, chan,
      duration);

 if (!ret) {
  *cookie = prandom_u32() | 1;
  priv->roc_cfg.cookie = *cookie;
  priv->roc_cfg.chan = *chan;

  cfg80211_ready_on_channel(wdev, *cookie, chan,
       duration, GFP_ATOMIC);

  mwifiex_dbg(priv->adapter, INFO,
       "info: ROC, cookie = 0x%llx\n", *cookie);
 }

 return ret;
}
