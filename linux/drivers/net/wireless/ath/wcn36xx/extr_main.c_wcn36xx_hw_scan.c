
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int scan_aborted; int scan_work; int fw_feat_caps; int scan_lock; int * scan_req; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_scan_request {int req; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int EBUSY ;
 int SCAN_OFFLOAD ;
 int get_feat_caps (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int wcn36xx_smd_start_hw_scan (struct wcn36xx*,struct ieee80211_vif*,int *) ;

__attribute__((used)) static int wcn36xx_hw_scan(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_scan_request *hw_req)
{
 struct wcn36xx *wcn = hw->priv;
 mutex_lock(&wcn->scan_lock);
 if (wcn->scan_req) {
  mutex_unlock(&wcn->scan_lock);
  return -EBUSY;
 }

 wcn->scan_aborted = 0;
 wcn->scan_req = &hw_req->req;

 mutex_unlock(&wcn->scan_lock);

 if (!get_feat_caps(wcn->fw_feat_caps, SCAN_OFFLOAD)) {

  schedule_work(&wcn->scan_work);
  return 0;
 }

 return wcn36xx_smd_start_hw_scan(wcn, vif, &hw_req->req);
}
