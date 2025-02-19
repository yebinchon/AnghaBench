
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct wiphy {int features; TYPE_4__* wowlan; int flags; TYPE_3__** bands; int regulatory_flags; int reg_notifier; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_ops {int set_rekey_data; } ;
struct brcmf_pub {struct brcmf_cfg80211_info* config; struct wiphy* wiphy; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_7__ {struct net_device* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; struct brcmf_if* ifp; } ;
struct TYPE_11__ {scalar_t__ io_type; } ;
struct brcmf_cfg80211_info {struct wiphy* wiphy; int p2p; struct brcmf_pub* pub; TYPE_5__ d11inf; int vif_list; int vif_event; } ;
typedef scalar_t__ s32 ;
struct TYPE_12__ {struct net_device* ndev; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int cap; } ;
struct TYPE_9__ {TYPE_2__ ht_cap; } ;


 int BRCMF_C_GET_VERSION ;
 int BRCMF_E_TDLS_PEER_EVENT ;
 int BRCMF_FEAT_SCAN_RANDOM_MAC ;
 int BRCMF_FEAT_TDLS ;
 int BRCMF_FEAT_WOWL_GTK ;
 int BRCMF_OBSS_COEX_AUTO ;
 int GFP_KERNEL ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int INFO ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct brcmf_cfg80211_vif*) ;
 size_t NL80211_BAND_2GHZ ;
 int NL80211_FEATURE_ND_RANDOM_MAC_ADDR ;
 int NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR ;
 int NL80211_IFTYPE_STATION ;
 int REGULATORY_CUSTOM_REG ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WIPHY_WOWLAN_NET_DETECT ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 struct brcmf_cfg80211_vif* brcmf_alloc_vif (struct brcmf_cfg80211_info*,int ) ;
 scalar_t__ brcmf_btcoex_attach (struct brcmf_cfg80211_info*) ;
 int brcmf_btcoex_detach (struct brcmf_cfg80211_info*) ;
 int brcmf_cfg80211_reg_notifier ;
 int brcmf_cfg80211_set_rekey_data ;
 int brcmf_dbg (int ,char*,...) ;
 scalar_t__ brcmf_enable_bw40_2g (struct brcmf_cfg80211_info*) ;
 scalar_t__ brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 scalar_t__ brcmf_fil_cmd_int_get (struct brcmf_if*,int ,scalar_t__*) ;
 scalar_t__ brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_free_vif (struct brcmf_cfg80211_vif*) ;
 int brcmf_free_wiphy (struct wiphy*) ;
 scalar_t__ brcmf_fweh_activate_events (struct brcmf_if*) ;
 int brcmf_fweh_register (struct brcmf_pub*,int ,int ) ;
 TYPE_6__* brcmf_get_ifp (struct brcmf_pub*,int ) ;
 int brcmf_notify_tdls_peer_event ;
 scalar_t__ brcmf_p2p_attach (struct brcmf_cfg80211_info*,int) ;
 int brcmf_p2p_detach (int *) ;
 scalar_t__ brcmf_pno_attach (struct brcmf_cfg80211_info*) ;
 int brcmf_pno_detach (struct brcmf_cfg80211_info*) ;
 int brcmf_regdom ;
 scalar_t__ brcmf_setup_wiphy (struct wiphy*,struct brcmf_if*) ;
 scalar_t__ brcmf_setup_wiphybands (struct brcmf_cfg80211_info*) ;
 int brcmu_d11_attach (TYPE_5__*) ;
 int init_vif_event (int *) ;
 int kfree (struct brcmf_cfg80211_info*) ;
 struct brcmf_cfg80211_info* kzalloc (int,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 int wiphy_apply_custom_regulatory (struct wiphy*,int *) ;
 int wiphy_dev (struct wiphy*) ;
 scalar_t__ wiphy_register (struct wiphy*) ;
 int wiphy_unregister (struct wiphy*) ;
 int wl_deinit_priv (struct brcmf_cfg80211_info*) ;
 scalar_t__ wl_init_priv (struct brcmf_cfg80211_info*) ;

struct brcmf_cfg80211_info *brcmf_cfg80211_attach(struct brcmf_pub *drvr,
        struct cfg80211_ops *ops,
        bool p2pdev_forced)
{
 struct wiphy *wiphy = drvr->wiphy;
 struct net_device *ndev = brcmf_get_ifp(drvr, 0)->ndev;
 struct brcmf_cfg80211_info *cfg;
 struct brcmf_cfg80211_vif *vif;
 struct brcmf_if *ifp;
 s32 err = 0;
 s32 io_type;
 u16 *cap = ((void*)0);

 if (!ndev) {
  bphy_err(drvr, "ndev is invalid\n");
  return ((void*)0);
 }

 cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
 if (!cfg) {
  bphy_err(drvr, "Could not allocate wiphy device\n");
  return ((void*)0);
 }

 cfg->wiphy = wiphy;
 cfg->pub = drvr;
 init_vif_event(&cfg->vif_event);
 INIT_LIST_HEAD(&cfg->vif_list);

 vif = brcmf_alloc_vif(cfg, NL80211_IFTYPE_STATION);
 if (IS_ERR(vif))
  goto wiphy_out;

 ifp = netdev_priv(ndev);
 vif->ifp = ifp;
 vif->wdev.netdev = ndev;
 ndev->ieee80211_ptr = &vif->wdev;
 SET_NETDEV_DEV(ndev, wiphy_dev(cfg->wiphy));

 err = wl_init_priv(cfg);
 if (err) {
  bphy_err(drvr, "Failed to init iwm_priv (%d)\n", err);
  brcmf_free_vif(vif);
  goto wiphy_out;
 }
 ifp->vif = vif;


 err = brcmf_fil_cmd_int_get(ifp, BRCMF_C_GET_VERSION, &io_type);
 if (err) {
  bphy_err(drvr, "Failed to get D11 version (%d)\n", err);
  goto priv_out;
 }
 cfg->d11inf.io_type = (u8)io_type;
 brcmu_d11_attach(&cfg->d11inf);




 drvr->config = cfg;

 err = brcmf_setup_wiphy(wiphy, ifp);
 if (err < 0)
  goto priv_out;

 brcmf_dbg(INFO, "Registering custom regulatory\n");
 wiphy->reg_notifier = brcmf_cfg80211_reg_notifier;
 wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
 wiphy_apply_custom_regulatory(wiphy, &brcmf_regdom);





 if (wiphy->bands[NL80211_BAND_2GHZ]) {
  cap = &wiphy->bands[NL80211_BAND_2GHZ]->ht_cap.cap;
  *cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
 }




 err = wiphy_register(wiphy);
 if (err < 0) {
  bphy_err(drvr, "Could not register wiphy device (%d)\n", err);
  goto priv_out;
 }

 err = brcmf_setup_wiphybands(cfg);
 if (err) {
  bphy_err(drvr, "Setting wiphy bands failed (%d)\n", err);
  goto wiphy_unreg_out;
 }




 if (cap && (*cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40)) {
  err = brcmf_enable_bw40_2g(cfg);
  if (!err)
   err = brcmf_fil_iovar_int_set(ifp, "obss_coex",
            BRCMF_OBSS_COEX_AUTO);
  else
   *cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;
 }

 err = brcmf_fweh_activate_events(ifp);
 if (err) {
  bphy_err(drvr, "FWEH activation failed (%d)\n", err);
  goto wiphy_unreg_out;
 }

 err = brcmf_p2p_attach(cfg, p2pdev_forced);
 if (err) {
  bphy_err(drvr, "P2P initialisation failed (%d)\n", err);
  goto wiphy_unreg_out;
 }
 err = brcmf_btcoex_attach(cfg);
 if (err) {
  bphy_err(drvr, "BT-coex initialisation failed (%d)\n", err);
  brcmf_p2p_detach(&cfg->p2p);
  goto wiphy_unreg_out;
 }
 err = brcmf_pno_attach(cfg);
 if (err) {
  bphy_err(drvr, "PNO initialisation failed (%d)\n", err);
  brcmf_btcoex_detach(cfg);
  brcmf_p2p_detach(&cfg->p2p);
  goto wiphy_unreg_out;
 }

 if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_TDLS)) {
  err = brcmf_fil_iovar_int_set(ifp, "tdls_enable", 1);
  if (err) {
   brcmf_dbg(INFO, "TDLS not enabled (%d)\n", err);
   wiphy->flags &= ~WIPHY_FLAG_SUPPORTS_TDLS;
  } else {
   brcmf_fweh_register(cfg->pub, BRCMF_E_TDLS_PEER_EVENT,
         brcmf_notify_tdls_peer_event);
  }
 }


 err = brcmf_fweh_activate_events(ifp);
 if (err) {
  bphy_err(drvr, "FWEH activation failed (%d)\n", err);
  goto detach;
 }


 if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_SCAN_RANDOM_MAC)) {
  wiphy->features |= NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR;





 }

 return cfg;

detach:
 brcmf_pno_detach(cfg);
 brcmf_btcoex_detach(cfg);
 brcmf_p2p_detach(&cfg->p2p);
wiphy_unreg_out:
 wiphy_unregister(cfg->wiphy);
priv_out:
 wl_deinit_priv(cfg);
 brcmf_free_vif(vif);
 ifp->vif = ((void*)0);
wiphy_out:
 brcmf_free_wiphy(wiphy);
 kfree(cfg);
 return ((void*)0);
}
