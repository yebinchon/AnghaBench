
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_pmksa {int pmkid; int bssid; } ;
struct ath6kl_vif {int fw_vif_idx; } ;
struct ath6kl {int wmi; } ;


 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_wmi_setpmkid_cmd (int ,int ,int ,int ,int) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ath6kl_set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
       struct cfg80211_pmksa *pmksa)
{
 struct ath6kl *ar = ath6kl_priv(netdev);
 struct ath6kl_vif *vif = netdev_priv(netdev);

 return ath6kl_wmi_setpmkid_cmd(ar->wmi, vif->fw_vif_idx, pmksa->bssid,
           pmksa->pmkid, 1);
}
