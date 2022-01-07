
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dot11FCSErrorCount; int dot11ACKFailureCount; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int tx_fcs_errors; int tx_ack_failures; } ;


 int memset (struct ieee80211_low_level_stats*,int ,int) ;

__attribute__((used)) static int carl9170_op_get_stats(struct ieee80211_hw *hw,
     struct ieee80211_low_level_stats *stats)
{
 struct ar9170 *ar = hw->priv;

 memset(stats, 0, sizeof(*stats));
 stats->dot11ACKFailureCount = ar->tx_ack_failures;
 stats->dot11FCSErrorCount = ar->tx_fcs_errors;
 return 0;
}
