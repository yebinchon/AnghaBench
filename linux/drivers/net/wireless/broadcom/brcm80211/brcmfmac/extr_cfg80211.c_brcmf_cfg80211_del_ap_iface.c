
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int * vif; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;


 int BRCMF_E_IF_DEL ;
 int BRCMF_VIF_EVENT_TIMEOUT ;
 int EIO ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_cfg80211_arm_vif_event (struct brcmf_cfg80211_info*,int *) ;
 int brcmf_cfg80211_wait_vif_event (struct brcmf_cfg80211_info*,int ,int ) ;
 int brcmf_fil_bsscfg_data_set (struct brcmf_if*,char*,int *,int ) ;
 int brcmf_remove_interface (struct brcmf_if*,int) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static int brcmf_cfg80211_del_ap_iface(struct wiphy *wiphy,
           struct wireless_dev *wdev)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct net_device *ndev = wdev->netdev;
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = cfg->pub;
 int ret;
 int err;

 brcmf_cfg80211_arm_vif_event(cfg, ifp->vif);

 err = brcmf_fil_bsscfg_data_set(ifp, "interface_remove", ((void*)0), 0);
 if (err) {
  bphy_err(drvr, "interface_remove failed %d\n", err);
  goto err_unarm;
 }


 ret = brcmf_cfg80211_wait_vif_event(cfg, BRCMF_E_IF_DEL,
         BRCMF_VIF_EVENT_TIMEOUT);
 if (!ret) {
  bphy_err(drvr, "timeout occurred\n");
  err = -EIO;
  goto err_unarm;
 }

 brcmf_remove_interface(ifp, 1);

err_unarm:
 brcmf_cfg80211_arm_vif_event(cfg, ((void*)0));
 return err;
}
