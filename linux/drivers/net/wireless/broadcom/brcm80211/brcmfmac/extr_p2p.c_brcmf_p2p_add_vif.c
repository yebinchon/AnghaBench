
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int macaddr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; TYPE_3__* ndev; } ;
struct brcmf_cfg80211_vif {struct brcmf_if* ifp; } ;
struct TYPE_9__ {TYPE_1__* bss_idx; int int_addr; } ;
struct brcmf_cfg80211_info {TYPE_4__ p2p; struct brcmf_pub* pub; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef enum brcmf_fil_p2p_if_types { ____Placeholder_brcmf_fil_p2p_if_types } brcmf_fil_p2p_if_types ;
struct TYPE_8__ {unsigned char name_assign_type; int name; } ;
struct TYPE_7__ {struct wireless_dev wdev; } ;
struct TYPE_6__ {struct brcmf_cfg80211_vif* vif; } ;


 int BRCMF_C_SET_SCB_TIMEOUT ;
 int BRCMF_E_IF_ADD ;
 int BRCMF_FIL_P2P_IF_CLIENT ;
 int BRCMF_FIL_P2P_IF_GO ;
 int BRCMF_SCB_TIMEOUT_VALUE ;
 int BRCMF_VIF_EVENT_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 int ENOENT ;
 int EOPNOTSUPP ;
 struct wireless_dev* ERR_PTR (int) ;
 int INFO ;
 scalar_t__ IS_ERR (struct brcmf_cfg80211_vif*) ;



 size_t P2PAPI_BSSCFG_CONNECTION ;
 int bphy_err (struct brcmf_pub*,char*) ;
 struct brcmf_cfg80211_vif* brcmf_alloc_vif (struct brcmf_cfg80211_info*,int) ;
 int brcmf_cfg80211_arm_vif_event (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*) ;
 scalar_t__ brcmf_cfg80211_vif_event_armed (struct brcmf_cfg80211_info*) ;
 int brcmf_cfg80211_wait_vif_event (struct brcmf_cfg80211_info*,int ,int ) ;
 int brcmf_dbg (int ,char*,char const*,int) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 int brcmf_net_attach (struct brcmf_if*,int) ;
 struct wireless_dev* brcmf_p2p_create_p2pdev (TYPE_4__*,struct wiphy*,int ) ;
 int brcmf_p2p_request_p2p_if (TYPE_4__*,struct brcmf_if*,int ,int) ;
 int cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 int free_netdev (TYPE_3__*) ;
 struct brcmf_if* netdev_priv (int ) ;
 int strncpy (int ,char const*,int) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

struct wireless_dev *brcmf_p2p_add_vif(struct wiphy *wiphy, const char *name,
           unsigned char name_assign_type,
           enum nl80211_iftype type,
           struct vif_params *params)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(cfg_to_ndev(cfg));
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_cfg80211_vif *vif;
 enum brcmf_fil_p2p_if_types iftype;
 int err;

 if (brcmf_cfg80211_vif_event_armed(cfg))
  return ERR_PTR(-EBUSY);

 brcmf_dbg(INFO, "adding vif \"%s\" (type=%d)\n", name, type);

 switch (type) {
 case 130:
  iftype = BRCMF_FIL_P2P_IF_CLIENT;
  break;
 case 128:
  iftype = BRCMF_FIL_P2P_IF_GO;
  break;
 case 129:
  return brcmf_p2p_create_p2pdev(&cfg->p2p, wiphy,
            params->macaddr);
 default:
  return ERR_PTR(-EOPNOTSUPP);
 }

 vif = brcmf_alloc_vif(cfg, type);
 if (IS_ERR(vif))
  return (struct wireless_dev *)vif;
 brcmf_cfg80211_arm_vif_event(cfg, vif);

 err = brcmf_p2p_request_p2p_if(&cfg->p2p, ifp, cfg->p2p.int_addr,
           iftype);
 if (err) {
  brcmf_cfg80211_arm_vif_event(cfg, ((void*)0));
  goto fail;
 }


 err = brcmf_cfg80211_wait_vif_event(cfg, BRCMF_E_IF_ADD,
         BRCMF_VIF_EVENT_TIMEOUT);
 brcmf_cfg80211_arm_vif_event(cfg, ((void*)0));
 if (!err) {
  bphy_err(drvr, "timeout occurred\n");
  err = -EIO;
  goto fail;
 }


 ifp = vif->ifp;
 if (!ifp) {
  bphy_err(drvr, "no if pointer provided\n");
  err = -ENOENT;
  goto fail;
 }

 strncpy(ifp->ndev->name, name, sizeof(ifp->ndev->name) - 1);
 ifp->ndev->name_assign_type = name_assign_type;
 err = brcmf_net_attach(ifp, 1);
 if (err) {
  bphy_err(drvr, "Registering netdevice failed\n");
  free_netdev(ifp->ndev);
  goto fail;
 }

 cfg->p2p.bss_idx[P2PAPI_BSSCFG_CONNECTION].vif = vif;

 brcmf_fil_iovar_int_set(ifp, "roam_off", 1);
 if (iftype == BRCMF_FIL_P2P_IF_GO) {

  brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_SCB_TIMEOUT,
          BRCMF_SCB_TIMEOUT_VALUE);
 }
 return &ifp->vif->wdev;

fail:
 brcmf_free_vif(vif);
 return ERR_PTR(err);
}
