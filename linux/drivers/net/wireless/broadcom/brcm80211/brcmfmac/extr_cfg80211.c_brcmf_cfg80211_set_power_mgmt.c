
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; } ;
struct brcmf_cfg80211_info {int pwr_save; struct brcmf_pub* pub; } ;
typedef int s32 ;
struct TYPE_3__ {scalar_t__ iftype; } ;
struct TYPE_4__ {TYPE_1__ wdev; } ;


 int BRCMF_C_SET_PM ;
 int ENODEV ;
 int INFO ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 int PM_FAST ;
 int PM_OFF ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int) ;
 int check_vif_up (TYPE_2__*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static s32
brcmf_cfg80211_set_power_mgmt(struct wiphy *wiphy, struct net_device *ndev,
      bool enabled, s32 timeout)
{
 s32 pm;
 s32 err = 0;
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = cfg->pub;

 brcmf_dbg(TRACE, "Enter\n");
 cfg->pwr_save = enabled;
 if (!check_vif_up(ifp->vif)) {

  brcmf_dbg(INFO, "Device is not ready, storing the value in cfg_info struct\n");
  goto done;
 }

 pm = enabled ? PM_FAST : PM_OFF;

 if (ifp->vif->wdev.iftype == NL80211_IFTYPE_P2P_CLIENT) {
  brcmf_dbg(INFO, "Do not enable power save for P2P clients\n");
  pm = PM_OFF;
 }
 brcmf_dbg(INFO, "power save %s\n", (pm ? "enabled" : "disabled"));

 err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_PM, pm);
 if (err) {
  if (err == -ENODEV)
   bphy_err(drvr, "net_device is not ready yet\n");
  else
   bphy_err(drvr, "error (%d)\n", err);
 }
done:
 brcmf_dbg(TRACE, "Exit\n");
 return err;
}
