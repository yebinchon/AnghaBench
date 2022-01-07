
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_bss_conf {int bssid; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int capflags; } ;
struct ath9k_htc_priv {int ah; } ;


 int CONFIG ;
 int ath9k_htc_send_rate_cmd (struct ath9k_htc_priv*,struct ath9k_htc_target_rate*) ;
 int ath9k_htc_setup_rate (struct ath9k_htc_priv*,struct ieee80211_sta*,struct ath9k_htc_target_rate*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int be32_to_cpu (int ) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int memset (struct ath9k_htc_target_rate*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void ath9k_htc_update_rate(struct ath9k_htc_priv *priv,
      struct ieee80211_vif *vif,
      struct ieee80211_bss_conf *bss_conf)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_rate trate;
 struct ieee80211_sta *sta;
 int ret;

 memset(&trate, 0, sizeof(struct ath9k_htc_target_rate));

 rcu_read_lock();
 sta = ieee80211_find_sta(vif, bss_conf->bssid);
 if (!sta) {
  rcu_read_unlock();
  return;
 }
 ath9k_htc_setup_rate(priv, sta, &trate);
 rcu_read_unlock();

 ret = ath9k_htc_send_rate_cmd(priv, &trate);
 if (!ret)
  ath_dbg(common, CONFIG,
   "Updated target sta: %pM, rate caps: 0x%X\n",
   bss_conf->bssid, be32_to_cpu(trate.capflags));
}
