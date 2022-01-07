
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {int dongle_up; scalar_t__ pwr_save; struct brcmf_pub* pub; } ;
typedef int s32 ;


 int BRCMF_C_SET_FAKEFRAG ;
 int BRCMF_C_SET_PM ;
 int BRCMF_C_UP ;
 int INFO ;
 int PM_FAST ;
 int PM_OFF ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_cfg80211_change_iface (int ,struct net_device*,int ,int *) ;
 int brcmf_configure_arp_nd_offload (struct brcmf_if*,int) ;
 int brcmf_dbg (int ,char*,char*) ;
 int brcmf_dongle_roam (struct brcmf_if*) ;
 int brcmf_dongle_scantime (struct brcmf_if*) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int) ;
 struct net_device* cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32 brcmf_config_dongle(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_pub *drvr = cfg->pub;
 struct net_device *ndev;
 struct wireless_dev *wdev;
 struct brcmf_if *ifp;
 s32 power_mode;
 s32 err = 0;

 if (cfg->dongle_up)
  return err;

 ndev = cfg_to_ndev(cfg);
 wdev = ndev->ieee80211_ptr;
 ifp = netdev_priv(ndev);


 brcmf_fil_cmd_int_set(ifp, BRCMF_C_UP, 0);

 brcmf_dongle_scantime(ifp);

 power_mode = cfg->pwr_save ? PM_FAST : PM_OFF;
 err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_PM, power_mode);
 if (err)
  goto default_conf_out;
 brcmf_dbg(INFO, "power save set to %s\n",
    (power_mode ? "enabled" : "disabled"));

 err = brcmf_dongle_roam(ifp);
 if (err)
  goto default_conf_out;
 err = brcmf_cfg80211_change_iface(wdev->wiphy, ndev, wdev->iftype,
       ((void*)0));
 if (err)
  goto default_conf_out;

 brcmf_configure_arp_nd_offload(ifp, 1);

 err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_FAKEFRAG, 1);
 if (err) {
  bphy_err(drvr, "failed to set frameburst mode\n");
  goto default_conf_out;
 }

 cfg->dongle_up = 1;
default_conf_out:

 return err;

}
