
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int scan_aborted; int hw; int scan_work; int fw_feat_caps; int scan_lock; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct cfg80211_scan_info {int aborted; } ;


 int SCAN_OFFLOAD ;
 int cancel_work_sync (int *) ;
 scalar_t__ get_feat_caps (int ,int ) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_smd_stop_hw_scan (struct wcn36xx*) ;

__attribute__((used)) static void wcn36xx_cancel_hw_scan(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct wcn36xx *wcn = hw->priv;

 mutex_lock(&wcn->scan_lock);
 wcn->scan_aborted = 1;
 mutex_unlock(&wcn->scan_lock);

 if (get_feat_caps(wcn->fw_feat_caps, SCAN_OFFLOAD)) {


  wcn36xx_smd_stop_hw_scan(wcn);
 } else {
  struct cfg80211_scan_info scan_info = {
   .aborted = 1,
  };

  cancel_work_sync(&wcn->scan_work);
  ieee80211_scan_completed(wcn->hw, &scan_info);
 }
}
