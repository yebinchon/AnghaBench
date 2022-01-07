
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ethtool_stats {int dummy; } ;
struct ath9k_htc_priv {int dummy; } ;
struct TYPE_6__ {int skb_completed_bytes; int skb_completed; } ;
struct TYPE_5__ {int skb_success_bytes; int skb_success; } ;
struct TYPE_4__ {int * phy_err_stats; int decrypt_busy_err; int post_delim_crc_err; int pre_delim_crc_err; int mic_err; int phy_err; int decrypt_crc_err; int crc_err; } ;


 int ASTXQ (int ) ;
 int ATH9K_HTC_SSTATS_LEN ;
 size_t ATH9K_PHYERR_CCK_TIMING ;
 size_t ATH9K_PHYERR_OFDM_TIMING ;
 size_t ATH9K_PHYERR_RADAR ;
 TYPE_3__ SKBRXBASE ;
 TYPE_2__ SKBTXBASE ;
 TYPE_1__ SRXBASE ;
 int WARN_ON (int) ;
 int queue_stats ;

void ath9k_htc_get_et_stats(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ethtool_stats *stats, u64 *data)
{
 struct ath9k_htc_priv *priv = hw->priv;
 int i = 0;

 data[i++] = SKBTXBASE.skb_success;
 data[i++] = SKBTXBASE.skb_success_bytes;
 data[i++] = SKBRXBASE.skb_completed;
 data[i++] = SKBRXBASE.skb_completed_bytes;

 ASTXQ(queue_stats);

 data[i++] = SRXBASE.crc_err;
 data[i++] = SRXBASE.decrypt_crc_err;
 data[i++] = SRXBASE.phy_err;
 data[i++] = SRXBASE.mic_err;
 data[i++] = SRXBASE.pre_delim_crc_err;
 data[i++] = SRXBASE.post_delim_crc_err;
 data[i++] = SRXBASE.decrypt_busy_err;

 data[i++] = SRXBASE.phy_err_stats[ATH9K_PHYERR_RADAR];
 data[i++] = SRXBASE.phy_err_stats[ATH9K_PHYERR_OFDM_TIMING];
 data[i++] = SRXBASE.phy_err_stats[ATH9K_PHYERR_CCK_TIMING];

 WARN_ON(i != ATH9K_HTC_SSTATS_LEN);
}
