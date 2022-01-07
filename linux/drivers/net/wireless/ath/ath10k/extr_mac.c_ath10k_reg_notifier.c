
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct regulatory_request {int dfs_region; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_5__ {int regulatory; } ;
struct ath10k {scalar_t__ state; int phy_capability; TYPE_3__* hw; int conf_mutex; TYPE_4__* dfs_detector; TYPE_1__ ath_common; } ;
struct TYPE_8__ {int (* set_dfs_domain ) (TYPE_4__*,int ) ;} ;
struct TYPE_7__ {TYPE_2__* wiphy; } ;
struct TYPE_6__ {int * bands; } ;


 int ATH10K_DBG_REGULATORY ;
 scalar_t__ ATH10K_STATE_ON ;
 int CONFIG_ATH10K_DFS_CERTIFIED ;
 scalar_t__ IS_ENABLED (int ) ;
 size_t NL80211_BAND_5GHZ ;
 int WHAL_WLAN_11A_CAPABILITY ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_mac_update_channel_list (struct ath10k*,int ) ;
 int ath10k_regd_update (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int ) ;
 int ath_reg_notifier_apply (struct wiphy*,struct regulatory_request*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*,int ) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void ath10k_reg_notifier(struct wiphy *wiphy,
    struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct ath10k *ar = hw->priv;
 bool result;

 ath_reg_notifier_apply(wiphy, request, &ar->ath_common.regulatory);

 if (IS_ENABLED(CONFIG_ATH10K_DFS_CERTIFIED) && ar->dfs_detector) {
  ath10k_dbg(ar, ATH10K_DBG_REGULATORY, "dfs region 0x%x\n",
      request->dfs_region);
  result = ar->dfs_detector->set_dfs_domain(ar->dfs_detector,
         request->dfs_region);
  if (!result)
   ath10k_warn(ar, "DFS region 0x%X not supported, will trigger radar for every pulse\n",
        request->dfs_region);
 }

 mutex_lock(&ar->conf_mutex);
 if (ar->state == ATH10K_STATE_ON)
  ath10k_regd_update(ar);
 mutex_unlock(&ar->conf_mutex);

 if (ar->phy_capability & WHAL_WLAN_11A_CAPABILITY)
  ath10k_mac_update_channel_list(ar,
            ar->hw->wiphy->bands[NL80211_BAND_5GHZ]);
}
