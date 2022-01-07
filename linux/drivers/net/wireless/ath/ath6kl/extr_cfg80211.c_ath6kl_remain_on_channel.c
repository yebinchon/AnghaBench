
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int center_freq; } ;
struct ath6kl_vif {scalar_t__ last_roc_id; int fw_vif_idx; int ndev; } ;
struct ath6kl {int wmi; } ;


 struct ath6kl* ath6kl_priv (int ) ;
 struct ath6kl_vif* ath6kl_vif_from_wdev (struct wireless_dev*) ;
 int ath6kl_wmi_remain_on_chnl_cmd (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int ath6kl_remain_on_channel(struct wiphy *wiphy,
        struct wireless_dev *wdev,
        struct ieee80211_channel *chan,
        unsigned int duration,
        u64 *cookie)
{
 struct ath6kl_vif *vif = ath6kl_vif_from_wdev(wdev);
 struct ath6kl *ar = ath6kl_priv(vif->ndev);
 u32 id;



 id = ++vif->last_roc_id;
 if (id == 0) {

  id = ++vif->last_roc_id;
 }
 *cookie = id;

 return ath6kl_wmi_remain_on_chnl_cmd(ar->wmi, vif->fw_vif_idx,
          chan->center_freq, duration);
}
