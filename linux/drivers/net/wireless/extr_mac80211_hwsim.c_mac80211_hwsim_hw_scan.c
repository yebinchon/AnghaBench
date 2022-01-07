
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac80211_hwsim_data {int hw_scan; int hw; int mutex; int survey_data; int scan_addr; scalar_t__ scan_chan_idx; struct ieee80211_vif* hw_scan_vif; struct cfg80211_scan_request* hw_scan_request; scalar_t__ tmp_chan; } ;
struct ieee80211_vif {int addr; } ;
struct cfg80211_scan_request {int flags; int mac_addr_mask; int mac_addr; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {int wiphy; struct mac80211_hwsim_data* priv; } ;


 int EBUSY ;
 int ETH_ALEN ;
 int NL80211_SCAN_FLAG_RANDOM_ADDR ;
 scalar_t__ WARN_ON (int) ;
 int get_random_mask_addr (int ,int ,int ) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wiphy_dbg (int ,char*) ;

__attribute__((used)) static int mac80211_hwsim_hw_scan(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      struct ieee80211_scan_request *hw_req)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;
 struct cfg80211_scan_request *req = &hw_req->req;

 mutex_lock(&hwsim->mutex);
 if (WARN_ON(hwsim->tmp_chan || hwsim->hw_scan_request)) {
  mutex_unlock(&hwsim->mutex);
  return -EBUSY;
 }
 hwsim->hw_scan_request = req;
 hwsim->hw_scan_vif = vif;
 hwsim->scan_chan_idx = 0;
 if (req->flags & NL80211_SCAN_FLAG_RANDOM_ADDR)
  get_random_mask_addr(hwsim->scan_addr,
         hw_req->req.mac_addr,
         hw_req->req.mac_addr_mask);
 else
  memcpy(hwsim->scan_addr, vif->addr, ETH_ALEN);
 memset(hwsim->survey_data, 0, sizeof(hwsim->survey_data));
 mutex_unlock(&hwsim->mutex);

 wiphy_dbg(hw->wiphy, "hwsim hw_scan request\n");

 ieee80211_queue_delayed_work(hwsim->hw, &hwsim->hw_scan, 0);

 return 0;
}
