
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct wcn36xx_vif {int dummy; } ;
struct wcn36xx_sta {int dummy; } ;
struct wcn36xx {scalar_t__ rf_id; TYPE_2__* hw; int dev; } ;
struct TYPE_5__ {int max_listen_interval; int queues; int sta_data_size; int vif_data_size; TYPE_1__* wiphy; } ;
struct TYPE_4__ {int interface_modes; int * wowlan; int n_cipher_suites; int const* cipher_suites; int max_scan_ie_len; int max_scan_ssids; int ** bands; } ;


 int AMPDU_AGGREGATION ;
 int ARRAY_SIZE (int const*) ;
 int BIT (int ) ;
 int CONNECTION_MONITOR ;
 int HAS_RATE_CONTROL ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_EXT_FEATURE_CQM_RSSI_LIST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int NL80211_IFTYPE_STATION ;
 scalar_t__ RF_IRIS_WCN3620 ;
 int SET_IEEE80211_DEV (TYPE_2__*,int ) ;
 int SIGNAL_DBM ;
 int SINGLE_SCAN_ON_ALL_BANDS ;
 int SUPPORTS_PS ;
 int TIMING_BEACON_ONLY ;
 int WCN36XX_MAX_SCAN_IE_LEN ;
 int WCN36XX_MAX_SCAN_SSIDS ;




 int ieee80211_hw_set (TYPE_2__*,int ) ;
 int wcn_band_2ghz ;
 int wcn_band_5ghz ;
 int wiphy_ext_feature_set (TYPE_1__*,int ) ;
 int wowlan_support ;

__attribute__((used)) static int wcn36xx_init_ieee80211(struct wcn36xx *wcn)
{
 static const u32 cipher_suites[] = {
  128,
  129,
  130,
  131,
 };

 ieee80211_hw_set(wcn->hw, TIMING_BEACON_ONLY);
 ieee80211_hw_set(wcn->hw, AMPDU_AGGREGATION);
 ieee80211_hw_set(wcn->hw, CONNECTION_MONITOR);
 ieee80211_hw_set(wcn->hw, SUPPORTS_PS);
 ieee80211_hw_set(wcn->hw, SIGNAL_DBM);
 ieee80211_hw_set(wcn->hw, HAS_RATE_CONTROL);
 ieee80211_hw_set(wcn->hw, SINGLE_SCAN_ON_ALL_BANDS);

 wcn->hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
  BIT(NL80211_IFTYPE_AP) |
  BIT(NL80211_IFTYPE_ADHOC) |
  BIT(NL80211_IFTYPE_MESH_POINT);

 wcn->hw->wiphy->bands[NL80211_BAND_2GHZ] = &wcn_band_2ghz;
 if (wcn->rf_id != RF_IRIS_WCN3620)
  wcn->hw->wiphy->bands[NL80211_BAND_5GHZ] = &wcn_band_5ghz;

 wcn->hw->wiphy->max_scan_ssids = WCN36XX_MAX_SCAN_SSIDS;
 wcn->hw->wiphy->max_scan_ie_len = WCN36XX_MAX_SCAN_IE_LEN;

 wcn->hw->wiphy->cipher_suites = cipher_suites;
 wcn->hw->wiphy->n_cipher_suites = ARRAY_SIZE(cipher_suites);





 wcn->hw->max_listen_interval = 200;

 wcn->hw->queues = 4;

 SET_IEEE80211_DEV(wcn->hw, wcn->dev);

 wcn->hw->sta_data_size = sizeof(struct wcn36xx_sta);
 wcn->hw->vif_data_size = sizeof(struct wcn36xx_vif);

 wiphy_ext_feature_set(wcn->hw->wiphy,
         NL80211_EXT_FEATURE_CQM_RSSI_LIST);

 return 0;
}
