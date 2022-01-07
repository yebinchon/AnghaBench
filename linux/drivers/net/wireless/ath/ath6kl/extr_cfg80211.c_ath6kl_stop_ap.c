
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int ndev; int flags; int fw_vif_idx; } ;
struct ath6kl {int wmi; } ;


 scalar_t__ AP_NETWORK ;
 int CONNECTED ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 struct ath6kl* ath6kl_priv (struct net_device*) ;
 int ath6kl_restore_htcap (struct ath6kl_vif*) ;
 int ath6kl_wmi_disconnect_cmd (int ,int ) ;
 int clear_bit (int ,int *) ;
 struct ath6kl_vif* netdev_priv (struct net_device*) ;
 int netif_carrier_off (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath6kl_stop_ap(struct wiphy *wiphy, struct net_device *dev)
{
 struct ath6kl *ar = ath6kl_priv(dev);
 struct ath6kl_vif *vif = netdev_priv(dev);

 if (vif->nw_type != AP_NETWORK)
  return -EOPNOTSUPP;
 if (!test_bit(CONNECTED, &vif->flags))
  return -ENOTCONN;

 ath6kl_wmi_disconnect_cmd(ar->wmi, vif->fw_vif_idx);
 clear_bit(CONNECTED, &vif->flags);
 netif_carrier_off(vif->ndev);


 return ath6kl_restore_htcap(vif);
}
