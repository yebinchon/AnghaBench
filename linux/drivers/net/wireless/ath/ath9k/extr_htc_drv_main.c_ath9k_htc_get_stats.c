
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dot11RTSSuccessCount; int dot11FCSErrorCount; int dot11RTSFailureCount; int dot11ACKFailureCount; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath9k_mib_stats {int rts_good; int fcs_bad; int rts_bad; int ackrcv_bad; } ;
struct ath_hw {struct ath9k_mib_stats ah_mibStats; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;



__attribute__((used)) static int ath9k_htc_get_stats(struct ieee80211_hw *hw,
          struct ieee80211_low_level_stats *stats)
{
 struct ath9k_htc_priv *priv = hw->priv;
 struct ath_hw *ah = priv->ah;
 struct ath9k_mib_stats *mib_stats = &ah->ah_mibStats;

 stats->dot11ACKFailureCount = mib_stats->ackrcv_bad;
 stats->dot11RTSFailureCount = mib_stats->rts_bad;
 stats->dot11FCSErrorCount = mib_stats->fcs_bad;
 stats->dot11RTSSuccessCount = mib_stats->rts_good;

 return 0;
}
