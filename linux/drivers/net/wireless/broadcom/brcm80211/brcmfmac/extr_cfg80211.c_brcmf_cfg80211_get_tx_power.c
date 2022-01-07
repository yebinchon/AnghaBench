
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef int s32 ;


 int EIO ;
 int TRACE ;
 int WL_TXPWR_OVERRIDE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_iovar_int_get (int ,char*,int*) ;
 int check_vif_up (struct brcmf_cfg80211_vif*) ;
 struct brcmf_cfg80211_vif* wdev_to_vif (struct wireless_dev*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static s32
brcmf_cfg80211_get_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
       s32 *dbm)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_cfg80211_vif *vif = wdev_to_vif(wdev);
 struct brcmf_pub *drvr = cfg->pub;
 s32 qdbm = 0;
 s32 err;

 brcmf_dbg(TRACE, "Enter\n");
 if (!check_vif_up(vif))
  return -EIO;

 err = brcmf_fil_iovar_int_get(vif->ifp, "qtxpower", &qdbm);
 if (err) {
  bphy_err(drvr, "error (%d)\n", err);
  goto done;
 }
 *dbm = (qdbm & ~WL_TXPWR_OVERRIDE) / 4;

done:
 brcmf_dbg(TRACE, "Exit (0x%x %d)\n", qdbm, *dbm);
 return err;
}
