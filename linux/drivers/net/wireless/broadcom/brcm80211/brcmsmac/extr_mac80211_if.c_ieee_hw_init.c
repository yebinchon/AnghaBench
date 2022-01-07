
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {int max_rates; char* rate_control_algorithm; scalar_t__ sta_data_size; TYPE_1__* wiphy; int queues; int extra_tx_headroom; } ;
struct TYPE_2__ {int interface_modes; } ;


 int AMPDU_AGGREGATION ;
 int BIT (int ) ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_STATION ;
 int N_TX_QUEUES ;
 int REPORTS_TX_ACK_STATUS ;
 int SIGNAL_DBM ;
 int brcms_c_get_header_len () ;
 int ieee80211_hw_set (struct ieee80211_hw*,int ) ;
 int ieee_hw_rate_init (struct ieee80211_hw*) ;
 int wiphy_ext_feature_set (TYPE_1__*,int ) ;

__attribute__((used)) static int ieee_hw_init(struct ieee80211_hw *hw)
{
 ieee80211_hw_set(hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(hw, SIGNAL_DBM);
 ieee80211_hw_set(hw, REPORTS_TX_ACK_STATUS);

 hw->extra_tx_headroom = brcms_c_get_header_len();
 hw->queues = N_TX_QUEUES;
 hw->max_rates = 2;


 hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
         BIT(NL80211_IFTYPE_AP) |
         BIT(NL80211_IFTYPE_ADHOC);
 wiphy_ext_feature_set(hw->wiphy, NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 hw->rate_control_algorithm = "minstrel_ht";

 hw->sta_data_size = 0;
 return ieee_hw_rate_init(hw);
}
