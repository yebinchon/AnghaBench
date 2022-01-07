
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int chanctx_conf; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {struct cfg80211_chan_def def; } ;


 int ENOENT ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int ath10k_mac_vif_chan(struct ieee80211_vif *vif,
   struct cfg80211_chan_def *def)
{
 struct ieee80211_chanctx_conf *conf;

 rcu_read_lock();
 conf = rcu_dereference(vif->chanctx_conf);
 if (!conf) {
  rcu_read_unlock();
  return -ENOENT;
 }

 *def = conf->def;
 rcu_read_unlock();

 return 0;
}
