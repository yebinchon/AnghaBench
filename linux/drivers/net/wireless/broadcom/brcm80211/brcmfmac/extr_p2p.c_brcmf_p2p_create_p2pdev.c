
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct wireless_dev {int address; } ;
struct wiphy {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_7__ {int act_frm_scan; int afx_work; } ;
struct brcmf_p2p_info {int wait_next_af; TYPE_2__ afx_hdl; int send_af_done; int dev_addr; TYPE_1__* bss_idx; TYPE_3__* cfg; } ;
struct brcmf_if {scalar_t__ bsscfgidx; int * mac_addr; } ;
struct brcmf_cfg80211_vif {struct wireless_dev wdev; struct brcmf_if* ifp; } ;
struct TYPE_8__ {struct brcmf_pub* pub; } ;
struct TYPE_6__ {struct brcmf_cfg80211_vif* vif; } ;


 int BRCMF_E_IF_ADD ;
 int BRCMF_VIF_EVENT_TIMEOUT ;
 int EINVAL ;
 int EIO ;
 int ENOSPC ;
 struct wireless_dev* ERR_PTR (int) ;
 int ETH_ALEN ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct brcmf_cfg80211_vif*) ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int WARN_ON (int) ;
 int bphy_err (struct brcmf_pub*,char*) ;
 struct brcmf_cfg80211_vif* brcmf_alloc_vif (TYPE_3__*,int ) ;
 int brcmf_cfg80211_arm_vif_event (TYPE_3__*,struct brcmf_cfg80211_vif*) ;
 int brcmf_cfg80211_wait_vif_event (TYPE_3__*,int ,int ) ;
 int brcmf_fil_iovar_int_get (struct brcmf_if*,char*,scalar_t__*) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 int brcmf_fweh_p2pdev_setup (struct brcmf_if*,int) ;
 int brcmf_p2p_afx_handler ;
 int brcmf_p2p_generate_bss_mac (struct brcmf_p2p_info*,int *) ;
 int brcmf_p2p_set_firmware (struct brcmf_if*,int ) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int init_completion (int *) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static struct wireless_dev *brcmf_p2p_create_p2pdev(struct brcmf_p2p_info *p2p,
          struct wiphy *wiphy,
          u8 *addr)
{
 struct brcmf_pub *drvr = p2p->cfg->pub;
 struct brcmf_cfg80211_vif *p2p_vif;
 struct brcmf_if *p2p_ifp;
 struct brcmf_if *pri_ifp;
 int err;
 u32 bsscfgidx;

 if (p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif)
  return ERR_PTR(-ENOSPC);

 p2p_vif = brcmf_alloc_vif(p2p->cfg, NL80211_IFTYPE_P2P_DEVICE);
 if (IS_ERR(p2p_vif)) {
  bphy_err(drvr, "could not create discovery vif\n");
  return (struct wireless_dev *)p2p_vif;
 }

 pri_ifp = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif->ifp;


 if (addr && ether_addr_equal(addr, pri_ifp->mac_addr)) {
  bphy_err(drvr, "discovery vif must be different from primary interface\n");
  return ERR_PTR(-EINVAL);
 }

 brcmf_p2p_generate_bss_mac(p2p, addr);
 brcmf_p2p_set_firmware(pri_ifp, p2p->dev_addr);

 brcmf_cfg80211_arm_vif_event(p2p->cfg, p2p_vif);
 brcmf_fweh_p2pdev_setup(pri_ifp, 1);


 err = brcmf_fil_iovar_int_set(pri_ifp, "p2p_disc", 1);
 if (err < 0) {
  bphy_err(drvr, "set p2p_disc error\n");
  brcmf_fweh_p2pdev_setup(pri_ifp, 0);
  brcmf_cfg80211_arm_vif_event(p2p->cfg, ((void*)0));
  goto fail;
 }


 err = brcmf_cfg80211_wait_vif_event(p2p->cfg, BRCMF_E_IF_ADD,
         BRCMF_VIF_EVENT_TIMEOUT);
 brcmf_cfg80211_arm_vif_event(p2p->cfg, ((void*)0));
 brcmf_fweh_p2pdev_setup(pri_ifp, 0);
 if (!err) {
  bphy_err(drvr, "timeout occurred\n");
  err = -EIO;
  goto fail;
 }


 p2p_ifp = p2p_vif->ifp;
 p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif = p2p_vif;
 memcpy(p2p_ifp->mac_addr, p2p->dev_addr, ETH_ALEN);
 memcpy(&p2p_vif->wdev.address, p2p->dev_addr, sizeof(p2p->dev_addr));


 err = brcmf_fil_iovar_int_get(pri_ifp, "p2p_dev", &bsscfgidx);
 if (err < 0) {
  bphy_err(drvr, "retrieving discover bsscfg index failed\n");
  goto fail;
 }

 WARN_ON(p2p_ifp->bsscfgidx != bsscfgidx);

 init_completion(&p2p->send_af_done);
 INIT_WORK(&p2p->afx_hdl.afx_work, brcmf_p2p_afx_handler);
 init_completion(&p2p->afx_hdl.act_frm_scan);
 init_completion(&p2p->wait_next_af);

 return &p2p_vif->wdev;

fail:
 brcmf_free_vif(p2p_vif);
 return ERR_PTR(err);
}
