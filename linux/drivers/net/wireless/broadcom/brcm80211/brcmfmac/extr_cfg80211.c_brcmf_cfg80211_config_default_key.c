
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int vif; struct brcmf_pub* drvr; } ;
typedef scalar_t__ s32 ;


 int BRCMF_C_SET_KEY_PRIMARY ;
 int CONN ;
 scalar_t__ EIO ;
 int TRACE ;
 int WEP_ENABLED ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,...) ;
 scalar_t__ brcmf_fil_bsscfg_int_get (struct brcmf_if*,char*,int*) ;
 scalar_t__ brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int) ;
 int check_vif_up (int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32
brcmf_cfg80211_config_default_key(struct wiphy *wiphy, struct net_device *ndev,
      u8 key_idx, bool unicast, bool multicast)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 u32 index;
 u32 wsec;
 s32 err = 0;

 brcmf_dbg(TRACE, "Enter\n");
 brcmf_dbg(CONN, "key index (%d)\n", key_idx);
 if (!check_vif_up(ifp->vif))
  return -EIO;

 err = brcmf_fil_bsscfg_int_get(ifp, "wsec", &wsec);
 if (err) {
  bphy_err(drvr, "WLC_GET_WSEC error (%d)\n", err);
  goto done;
 }

 if (wsec & WEP_ENABLED) {

  index = key_idx;
  err = brcmf_fil_cmd_int_set(ifp,
         BRCMF_C_SET_KEY_PRIMARY, index);
  if (err)
   bphy_err(drvr, "error (%d)\n", err);
 }
done:
 brcmf_dbg(TRACE, "Exit\n");
 return err;
}
