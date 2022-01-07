
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_scb_val_le {int val; int ea; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_1__* vif; } ;
struct brcmf_cfg80211_profile {int bssid; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef int scbval ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int sme_state; struct brcmf_cfg80211_profile profile; } ;


 int BRCMF_C_DISASSOC ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 int BRCMF_VIF_STATUS_CONNECTING ;
 scalar_t__ EIO ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,scalar_t__) ;
 int brcmf_dbg (int ,char*,...) ;
 scalar_t__ brcmf_fil_cmd_data_set (struct brcmf_if*,int ,struct brcmf_scb_val_le*,int) ;
 int cfg80211_disconnected (struct net_device*,int ,int *,int ,int,int ) ;
 int check_vif_up (TYPE_1__*) ;
 int clear_bit (int ,int *) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int *,int *,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static s32
brcmf_cfg80211_disconnect(struct wiphy *wiphy, struct net_device *ndev,
         u16 reason_code)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_scb_val_le scbval;
 s32 err = 0;

 brcmf_dbg(TRACE, "Enter. Reason code = %d\n", reason_code);
 if (!check_vif_up(ifp->vif))
  return -EIO;

 clear_bit(BRCMF_VIF_STATUS_CONNECTED, &ifp->vif->sme_state);
 clear_bit(BRCMF_VIF_STATUS_CONNECTING, &ifp->vif->sme_state);
 cfg80211_disconnected(ndev, reason_code, ((void*)0), 0, 1, GFP_KERNEL);

 memcpy(&scbval.ea, &profile->bssid, ETH_ALEN);
 scbval.val = cpu_to_le32(reason_code);
 err = brcmf_fil_cmd_data_set(ifp, BRCMF_C_DISASSOC,
         &scbval, sizeof(scbval));
 if (err)
  bphy_err(drvr, "error (%d)\n", err);

 brcmf_dbg(TRACE, "Exit\n");
 return err;
}
