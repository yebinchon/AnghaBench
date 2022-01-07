
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int bsscfgidx; struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_6__ {scalar_t__ iftype; } ;
struct brcmf_cfg80211_vif {TYPE_3__ wdev; } ;
struct TYPE_4__ {scalar_t__ p2pdev_dynamically; } ;
struct brcmf_cfg80211_info {TYPE_1__ p2p; struct brcmf_pub* pub; } ;
typedef int s32 ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {int iftype; } ;


 int BRCMF_C_SET_INFRA ;
 int BRCMF_FIL_P2P_IF_GO ;
 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int INFO ;



 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;



 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_cfg80211_update_proto_addr_mode (TYPE_3__*) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int) ;
 scalar_t__ brcmf_is_ibssmode (struct brcmf_cfg80211_vif*) ;
 int brcmf_p2p_ifchange (struct brcmf_cfg80211_info*,int ) ;
 int brcmf_vif_change_validate (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*,int) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static s32
brcmf_cfg80211_change_iface(struct wiphy *wiphy, struct net_device *ndev,
    enum nl80211_iftype type,
    struct vif_params *params)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_vif *vif = ifp->vif;
 struct brcmf_pub *drvr = cfg->pub;
 s32 infra = 0;
 s32 ap = 0;
 s32 err = 0;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d, type=%d\n", ifp->bsscfgidx,
    type);
 if ((type == 129) &&
     ((vif->wdev.iftype == NL80211_IFTYPE_P2P_CLIENT) ||
      (vif->wdev.iftype == 130) ||
      (vif->wdev.iftype == NL80211_IFTYPE_P2P_DEVICE))) {
  brcmf_dbg(TRACE, "Ignoring cmd for p2p if\n");
  if (cfg->p2p.p2pdev_dynamically)
   return -EOPNOTSUPP;
  else
   return 0;
 }
 err = brcmf_vif_change_validate(wiphy_to_cfg(wiphy), vif, type);
 if (err) {
  bphy_err(drvr, "iface validation failed: err=%d\n", err);
  return err;
 }
 switch (type) {
 case 131:
 case 128:
  bphy_err(drvr, "type (%d) : currently we do not support this type\n",
    type);
  return -EOPNOTSUPP;
 case 133:
  infra = 0;
  break;
 case 129:
  infra = 1;
  break;
 case 132:
 case 130:
  ap = 1;
  break;
 default:
  err = -EINVAL;
  goto done;
 }

 if (ap) {
  if (type == 130) {
   brcmf_dbg(INFO, "IF Type = P2P GO\n");
   err = brcmf_p2p_ifchange(cfg, BRCMF_FIL_P2P_IF_GO);
  }
  if (!err) {
   brcmf_dbg(INFO, "IF Type = AP\n");
  }
 } else {
  err = brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_INFRA, infra);
  if (err) {
   bphy_err(drvr, "WLC_SET_INFRA error (%d)\n", err);
   err = -EAGAIN;
   goto done;
  }
  brcmf_dbg(INFO, "IF Type = %s\n", brcmf_is_ibssmode(vif) ?
     "Adhoc" : "Infra");
 }
 ndev->ieee80211_ptr->iftype = type;

 brcmf_cfg80211_update_proto_addr_mode(&vif->wdev);

done:
 brcmf_dbg(TRACE, "Exit\n");

 return err;
}
