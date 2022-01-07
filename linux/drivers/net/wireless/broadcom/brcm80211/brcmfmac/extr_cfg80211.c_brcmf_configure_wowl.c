
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wowl_wakeind ;
typedef int u8 ;
typedef size_t u32 ;
struct cfg80211_wowlan {size_t n_patterns; scalar_t__ gtk_rekey_failure; scalar_t__ nd_config; TYPE_1__* patterns; scalar_t__ magic_pkt; scalar_t__ disconnect; } ;
struct brcmf_wowl_wakeind_le {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; int ndev; } ;
struct TYPE_8__ {int nd_data_completed; int nd_enabled; int active; int pre_pmmode; } ;
struct brcmf_cfg80211_info {TYPE_3__ wowl; TYPE_4__* pub; int wiphy; } ;
struct TYPE_9__ {int bus_if; } ;
struct TYPE_7__ {int sme_state; } ;
struct TYPE_6__ {int pkt_offset; scalar_t__ mask; int pattern_len; scalar_t__ pattern; } ;


 int BRCMF_C_GET_PM ;
 int BRCMF_C_SET_PM ;
 int BRCMF_E_PFN_NET_FOUND ;
 int BRCMF_FEAT_WOWL_ARP_ND ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 size_t BRCMF_WOWL_BCN ;
 size_t BRCMF_WOWL_DIS ;
 size_t BRCMF_WOWL_GTK_FAILURE ;
 size_t BRCMF_WOWL_MAGIC ;
 size_t BRCMF_WOWL_NET ;
 size_t BRCMF_WOWL_PFN_FOUND ;
 size_t BRCMF_WOWL_RETR ;
 size_t BRCMF_WOWL_UNASSOC ;
 int PM_MAX ;
 int TRACE ;
 int brcmf_bus_wowl_config (int ,int) ;
 int brcmf_cfg80211_sched_scan_start (int ,int ,scalar_t__) ;
 int brcmf_config_wowl_pattern (struct brcmf_if*,char*,int *,int ,int *,int ) ;
 int brcmf_configure_arp_nd_offload (struct brcmf_if*,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_feat_is_enabled (struct brcmf_if*,int ) ;
 int brcmf_fil_cmd_int_get (struct brcmf_if*,int ,int *) ;
 int brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_wowl_wakeind_le*,int) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_fweh_register (TYPE_4__*,int ,int ) ;
 int brcmf_fweh_unregister (TYPE_4__*,int ) ;
 int brcmf_wowl_nd_results ;
 int memcpy (struct brcmf_wowl_wakeind_le*,char*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void brcmf_configure_wowl(struct brcmf_cfg80211_info *cfg,
     struct brcmf_if *ifp,
     struct cfg80211_wowlan *wowl)
{
 u32 wowl_config;
 struct brcmf_wowl_wakeind_le wowl_wakeind;
 u32 i;

 brcmf_dbg(TRACE, "Suspend, wowl config.\n");

 if (!brcmf_feat_is_enabled(ifp, BRCMF_FEAT_WOWL_ARP_ND))
  brcmf_configure_arp_nd_offload(ifp, 0);
 brcmf_fil_cmd_int_get(ifp, BRCMF_C_GET_PM, &cfg->wowl.pre_pmmode);
 brcmf_fil_cmd_int_set(ifp, BRCMF_C_SET_PM, PM_MAX);

 wowl_config = 0;
 if (wowl->disconnect)
  wowl_config = BRCMF_WOWL_DIS | BRCMF_WOWL_BCN | BRCMF_WOWL_RETR;
 if (wowl->magic_pkt)
  wowl_config |= BRCMF_WOWL_MAGIC;
 if ((wowl->patterns) && (wowl->n_patterns)) {
  wowl_config |= BRCMF_WOWL_NET;
  for (i = 0; i < wowl->n_patterns; i++) {
   brcmf_config_wowl_pattern(ifp, "add",
    (u8 *)wowl->patterns[i].pattern,
    wowl->patterns[i].pattern_len,
    (u8 *)wowl->patterns[i].mask,
    wowl->patterns[i].pkt_offset);
  }
 }
 if (wowl->nd_config) {
  brcmf_cfg80211_sched_scan_start(cfg->wiphy, ifp->ndev,
      wowl->nd_config);
  wowl_config |= BRCMF_WOWL_PFN_FOUND;

  cfg->wowl.nd_data_completed = 0;
  cfg->wowl.nd_enabled = 1;

  brcmf_fweh_unregister(cfg->pub, BRCMF_E_PFN_NET_FOUND);
  brcmf_fweh_register(cfg->pub, BRCMF_E_PFN_NET_FOUND,
        brcmf_wowl_nd_results);
 }
 if (wowl->gtk_rekey_failure)
  wowl_config |= BRCMF_WOWL_GTK_FAILURE;
 if (!test_bit(BRCMF_VIF_STATUS_CONNECTED, &ifp->vif->sme_state))
  wowl_config |= BRCMF_WOWL_UNASSOC;

 memcpy(&wowl_wakeind, "clear", 6);
 brcmf_fil_iovar_data_set(ifp, "wowl_wakeind", &wowl_wakeind,
     sizeof(wowl_wakeind));
 brcmf_fil_iovar_int_set(ifp, "wowl", wowl_config);
 brcmf_fil_iovar_int_set(ifp, "wowl_activate", 1);
 brcmf_bus_wowl_config(cfg->pub->bus_if, 1);
 cfg->wowl.active = 1;
}
