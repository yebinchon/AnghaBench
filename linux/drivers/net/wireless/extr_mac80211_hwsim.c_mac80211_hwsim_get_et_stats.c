
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mac80211_hwsim_data {int group; int ps; int tx_failed; int tx_dropped; int rx_bytes; int rx_pkts; int tx_bytes; int tx_pkts; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct ethtool_stats {int dummy; } ;


 int MAC80211_HWSIM_SSTATS_LEN ;
 int WARN_ON (int) ;

__attribute__((used)) static void mac80211_hwsim_get_et_stats(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ethtool_stats *stats, u64 *data)
{
 struct mac80211_hwsim_data *ar = hw->priv;
 int i = 0;

 data[i++] = ar->tx_pkts;
 data[i++] = ar->tx_bytes;
 data[i++] = ar->rx_pkts;
 data[i++] = ar->rx_bytes;
 data[i++] = ar->tx_dropped;
 data[i++] = ar->tx_failed;
 data[i++] = ar->ps;
 data[i++] = ar->group;

 WARN_ON(i != MAC80211_HWSIM_SSTATS_LEN);
}
