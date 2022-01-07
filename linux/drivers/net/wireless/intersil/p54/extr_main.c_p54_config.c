
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct p54_common {int output_power; int conf_mutex; TYPE_3__* hw; struct ieee80211_channel* curchan; } ;
struct ieee80211_conf {int power_level; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct p54_common* priv; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_4__ {struct ieee80211_channel* chan; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ conf; } ;


 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int P54_SCAN_EXIT ;
 int WARN_ON (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_fetch_statistics (struct p54_common*) ;
 int p54_reset_stats (struct p54_common*) ;
 int p54_scan (struct p54_common*,int ,int ) ;
 int p54_set_ps (struct p54_common*) ;
 int p54_setup_mac (struct p54_common*) ;
 int p54_wait_for_stats (struct ieee80211_hw*) ;

__attribute__((used)) static int p54_config(struct ieee80211_hw *dev, u32 changed)
{
 int ret = 0;
 struct p54_common *priv = dev->priv;
 struct ieee80211_conf *conf = &dev->conf;

 mutex_lock(&priv->conf_mutex);
 if (changed & IEEE80211_CONF_CHANGE_POWER)
  priv->output_power = conf->power_level << 2;
 if (changed & IEEE80211_CONF_CHANGE_CHANNEL) {
  struct ieee80211_channel *oldchan;
  WARN_ON(p54_wait_for_stats(dev));
  oldchan = priv->curchan;
  priv->curchan = ((void*)0);
  ret = p54_scan(priv, P54_SCAN_EXIT, 0);
  if (ret) {
   priv->curchan = oldchan;
   goto out;
  }




  priv->curchan = priv->hw->conf.chandef.chan;
  p54_reset_stats(priv);
  WARN_ON(p54_fetch_statistics(priv));
 }
 if (changed & IEEE80211_CONF_CHANGE_PS) {
  WARN_ON(p54_wait_for_stats(dev));
  ret = p54_set_ps(priv);
  if (ret)
   goto out;
  WARN_ON(p54_wait_for_stats(dev));
 }
 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  WARN_ON(p54_wait_for_stats(dev));
  ret = p54_setup_mac(priv);
  if (ret)
   goto out;
  WARN_ON(p54_wait_for_stats(dev));
 }

out:
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
