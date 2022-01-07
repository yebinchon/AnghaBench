
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct ath6kl_vif {int list; } ;
struct ath6kl {int flag; int list_lock; } ;


 int WMI_READY ;
 int ath6kl_cfg80211_vif_cleanup (struct ath6kl_vif*) ;
 int ath6kl_cfg80211_vif_stop (struct ath6kl_vif*,int ) ;
 int list_del (int *) ;
 struct ath6kl_vif* netdev_priv (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;
 struct ath6kl* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ath6kl_cfg80211_del_iface(struct wiphy *wiphy,
         struct wireless_dev *wdev)
{
 struct ath6kl *ar = wiphy_priv(wiphy);
 struct ath6kl_vif *vif = netdev_priv(wdev->netdev);

 spin_lock_bh(&ar->list_lock);
 list_del(&vif->list);
 spin_unlock_bh(&ar->list_lock);

 ath6kl_cfg80211_vif_stop(vif, test_bit(WMI_READY, &ar->flag));

 rtnl_lock();
 ath6kl_cfg80211_vif_cleanup(vif);
 rtnl_unlock();

 return 0;
}
