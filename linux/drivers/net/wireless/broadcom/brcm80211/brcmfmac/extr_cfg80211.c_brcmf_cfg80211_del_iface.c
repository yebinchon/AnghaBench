
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int iftype; struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ifp; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; int scan_status; } ;


 int BRCMF_SCAN_STATUS_BUSY ;
 int EBUSY ;
 int EINVAL ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 int brcmf_cfg80211_del_ap_iface (struct wiphy*,struct wireless_dev*) ;
 scalar_t__ brcmf_cfg80211_vif_event_armed (struct brcmf_cfg80211_info*) ;
 int brcmf_fil_iovar_int_set (scalar_t__,char*,int) ;
 int brcmf_notify_escan_complete (struct brcmf_cfg80211_info*,scalar_t__,int,int) ;
 int brcmf_p2p_del_vif (struct wiphy*,struct wireless_dev*) ;
 struct net_device* cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static
int brcmf_cfg80211_del_iface(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct net_device *ndev = wdev->netdev;

 if (ndev && ndev == cfg_to_ndev(cfg))
  return -ENOTSUPP;


 if (brcmf_cfg80211_vif_event_armed(cfg))
  return -EBUSY;

 if (ndev) {
  if (test_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status) &&
      cfg->escan_info.ifp == netdev_priv(ndev))
   brcmf_notify_escan_complete(cfg, netdev_priv(ndev),
          1, 1);

  brcmf_fil_iovar_int_set(netdev_priv(ndev), "mpc", 1);
 }

 switch (wdev->iftype) {
 case 138:
 case 130:
 case 136:
 case 128:
 case 134:
 case 135:
  return -EOPNOTSUPP;
 case 137:
  return brcmf_cfg80211_del_ap_iface(wiphy, wdev);
 case 133:
 case 131:
 case 132:
  return brcmf_p2p_del_vif(wiphy, wdev);
 case 129:
 default:
  return -EINVAL;
 }
 return -EOPNOTSUPP;
}
