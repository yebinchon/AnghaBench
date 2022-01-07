
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_low_level_stats {int dot11FCSErrorCount; int dot11RTSSuccessCount; int dot11RTSFailureCount; int dot11ACKFailureCount; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct TYPE_2__ {int fcs_error; int rts_ok; int rts_fail; int ack_fail; } ;
struct ath5k_hw {TYPE_1__ stats; } ;


 int ath5k_hw_update_mib_counters (struct ath5k_hw*) ;

__attribute__((used)) static int
ath5k_get_stats(struct ieee80211_hw *hw,
  struct ieee80211_low_level_stats *stats)
{
 struct ath5k_hw *ah = hw->priv;


 ath5k_hw_update_mib_counters(ah);

 stats->dot11ACKFailureCount = ah->stats.ack_fail;
 stats->dot11RTSFailureCount = ah->stats.rts_fail;
 stats->dot11RTSSuccessCount = ah->stats.rts_ok;
 stats->dot11FCSErrorCount = ah->stats.fcs_error;

 return 0;
}
