
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {int bssid; int fw_vif_idx; int flags; } ;
struct ath6kl {int wmi; } ;


 int CONNECTED ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_wmi_setpmkid_cmd (int ,int ,int ,int *,int) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_flush_pmksa(struct wiphy *wiphy, struct net_device *netdev)
{
 struct ath6kl *ar = ath6kl_priv(netdev);
 struct ath6kl_vif *vif = netdev_priv(netdev);

 if (test_bit(CONNECTED, &vif->flags))
  return ath6kl_wmi_setpmkid_cmd(ar->wmi, vif->fw_vif_idx,
            vif->bssid, ((void*)0), 0);
 return 0;
}
