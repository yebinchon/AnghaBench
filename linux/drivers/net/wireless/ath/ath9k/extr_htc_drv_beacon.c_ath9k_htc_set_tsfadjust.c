
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; } ;
struct ath9k_htc_vif {int bslot; int tsfadjust; } ;
struct ath9k_htc_priv {struct ath_beacon_config cur_beacon_conf; int ah; } ;


 int ATH9K_HTC_MAX_BCN_VIF ;
 int CONFIG ;
 int TU_TO_USEC (int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,unsigned long long,int) ;
 int cpu_to_le64 (int ) ;

void ath9k_htc_set_tsfadjust(struct ath9k_htc_priv *priv,
        struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *)vif->drv_priv;
 struct ath_beacon_config *cur_conf = &priv->cur_beacon_conf;
 u64 tsfadjust;

 if (avp->bslot == 0)
  return;






 tsfadjust = cur_conf->beacon_interval * avp->bslot / ATH9K_HTC_MAX_BCN_VIF;
 avp->tsfadjust = cpu_to_le64(TU_TO_USEC(tsfadjust));

 ath_dbg(common, CONFIG, "tsfadjust is: %llu for bslot: %d\n",
  (unsigned long long)tsfadjust, avp->bslot);
}
