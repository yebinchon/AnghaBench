
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smps; } ;
struct iwl_priv {int dynamic_frag_thresh; int bt_duration; int bt_on_thresh; int bt_valid; int kill_cts_mask; int kill_ack_mask; TYPE_3__* lib; int * contexts; int rx_statistics_jiffies; scalar_t__ agg_tids_count; int missed_beacon_threshold; TYPE_1__ current_ht_config; int iw_mode; int plcp_delta_threshold; int band; int calib_results; int mutex; int sta_lock; } ;
struct TYPE_6__ {TYPE_2__* bt_params; int plcp_delta_threshold; } ;
struct TYPE_5__ {scalar_t__ advanced_bt_coexist; } ;


 int BT_DURATION_LIMIT_DEF ;
 int BT_FRAG_THRESHOLD_DEF ;
 int BT_ON_THRESHOLD_DEF ;
 int IEEE80211_SMPS_STATIC ;
 int INIT_LIST_HEAD (int *) ;
 int IWLAGN_BT_ALL_VALID_MSK ;
 int IWLAGN_BT_KILL_ACK_MASK_DEFAULT ;
 int IWLAGN_BT_KILL_CTS_MASK_DEFAULT ;
 int IWL_MISSED_BEACON_THRESHOLD_DEF ;
 size_t IWL_RXON_CTX_BSS ;
 int NL80211_BAND_2GHZ ;
 int NL80211_IFTYPE_STATION ;
 int iwl_init_scan_params (struct iwl_priv*) ;
 int iwlagn_set_rxon_chain (struct iwl_priv*,int *) ;
 int jiffies ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iwl_init_drv(struct iwl_priv *priv)
{
 spin_lock_init(&priv->sta_lock);

 mutex_init(&priv->mutex);

 INIT_LIST_HEAD(&priv->calib_results);

 priv->band = NL80211_BAND_2GHZ;

 priv->plcp_delta_threshold = priv->lib->plcp_delta_threshold;

 priv->iw_mode = NL80211_IFTYPE_STATION;
 priv->current_ht_config.smps = IEEE80211_SMPS_STATIC;
 priv->missed_beacon_threshold = IWL_MISSED_BEACON_THRESHOLD_DEF;
 priv->agg_tids_count = 0;

 priv->rx_statistics_jiffies = jiffies;


 iwlagn_set_rxon_chain(priv, &priv->contexts[IWL_RXON_CTX_BSS]);

 iwl_init_scan_params(priv);


 if (priv->lib->bt_params &&
     priv->lib->bt_params->advanced_bt_coexist) {
  priv->kill_ack_mask = IWLAGN_BT_KILL_ACK_MASK_DEFAULT;
  priv->kill_cts_mask = IWLAGN_BT_KILL_CTS_MASK_DEFAULT;
  priv->bt_valid = IWLAGN_BT_ALL_VALID_MSK;
  priv->bt_on_thresh = BT_ON_THRESHOLD_DEF;
  priv->bt_duration = BT_DURATION_LIMIT_DEF;
  priv->dynamic_frag_thresh = BT_FRAG_THRESHOLD_DEF;
 }

 return 0;
}
