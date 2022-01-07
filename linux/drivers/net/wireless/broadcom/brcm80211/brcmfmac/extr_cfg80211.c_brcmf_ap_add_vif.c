
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_1__* vif; TYPE_2__* ndev; } ;
struct brcmf_cfg80211_vif {struct brcmf_if* ifp; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct wireless_dev wdev; } ;


 int BRCMF_E_IF_ADD ;
 int BRCMF_VIF_EVENT_TIMEOUT ;
 int EBUSY ;
 int EIO ;
 int ENOENT ;
 struct wireless_dev* ERR_PTR (int) ;
 int INFO ;
 scalar_t__ IS_ERR (struct brcmf_cfg80211_vif*) ;
 int NL80211_IFTYPE_AP ;
 int bphy_err (struct brcmf_pub*,char*) ;
 struct brcmf_cfg80211_vif* brcmf_alloc_vif (struct brcmf_cfg80211_info*,int ) ;
 int brcmf_cfg80211_arm_vif_event (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*) ;
 int brcmf_cfg80211_request_ap_if (struct brcmf_if*) ;
 scalar_t__ brcmf_cfg80211_vif_event_armed (struct brcmf_cfg80211_info*) ;
 int brcmf_cfg80211_wait_vif_event (struct brcmf_cfg80211_info*,int ,int ) ;
 int brcmf_dbg (int ,char*,char const*) ;
 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 int brcmf_net_attach (struct brcmf_if*,int) ;
 int cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 int free_netdev (TYPE_2__*) ;
 struct brcmf_if* netdev_priv (int ) ;
 int strncpy (int ,char const*,int) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

__attribute__((used)) static
struct wireless_dev *brcmf_ap_add_vif(struct wiphy *wiphy, const char *name,
          struct vif_params *params)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_if *ifp = netdev_priv(cfg_to_ndev(cfg));
 struct brcmf_pub *drvr = cfg->pub;
 struct brcmf_cfg80211_vif *vif;
 int err;

 if (brcmf_cfg80211_vif_event_armed(cfg))
  return ERR_PTR(-EBUSY);

 brcmf_dbg(INFO, "Adding vif \"%s\"\n", name);

 vif = brcmf_alloc_vif(cfg, NL80211_IFTYPE_AP);
 if (IS_ERR(vif))
  return (struct wireless_dev *)vif;

 brcmf_cfg80211_arm_vif_event(cfg, vif);

 err = brcmf_cfg80211_request_ap_if(ifp);
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
 err = brcmf_net_attach(ifp, 1);
 if (err) {
  bphy_err(drvr, "Registering netdevice failed\n");
  free_netdev(ifp->ndev);
  goto fail;
 }

 return &ifp->vif->wdev;

fail:
 brcmf_free_vif(vif);
 return ERR_PTR(err);
}
