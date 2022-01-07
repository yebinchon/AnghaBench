
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; int ifidx; TYPE_1__* drvr; struct net_device* ndev; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ addr; int flags; } ;
struct brcmf_cfg80211_profile {int bssid; } ;
struct brcmf_cfg80211_info {int vif_disabled; int channel; int wiphy; } ;
typedef int s32 ;
struct TYPE_7__ {int sme_state; struct brcmf_cfg80211_profile profile; } ;
struct TYPE_6__ {struct brcmf_cfg80211_info* config; } ;


 scalar_t__ BRCMF_E_DEAUTH ;
 scalar_t__ BRCMF_E_DEAUTH_IND ;
 scalar_t__ BRCMF_E_DISASSOC_IND ;
 scalar_t__ BRCMF_E_LINK ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 int BRCMF_VIF_STATUS_CONNECTING ;
 int CONN ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int brcmf_bss_connect_done (struct brcmf_cfg80211_info*,struct net_device*,struct brcmf_event_msg const*,int) ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_inform_ibss (struct brcmf_cfg80211_info*,struct net_device*,scalar_t__) ;
 int brcmf_init_prof (int ) ;
 scalar_t__ brcmf_is_apmode (TYPE_2__*) ;
 scalar_t__ brcmf_is_ibssmode (TYPE_2__*) ;
 scalar_t__ brcmf_is_linkdown (struct brcmf_event_msg const*) ;
 scalar_t__ brcmf_is_linkup (TYPE_2__*,struct brcmf_event_msg const*) ;
 scalar_t__ brcmf_is_nonetwork (struct brcmf_cfg80211_info*,struct brcmf_event_msg const*) ;
 int brcmf_link_down (TYPE_2__*,int ) ;
 int brcmf_map_fw_linkdown_reason (struct brcmf_event_msg const*) ;
 int brcmf_net_setcarrier (struct brcmf_if*,int) ;
 int brcmf_notify_connect_status_ap (struct brcmf_cfg80211_info*,struct net_device*,struct brcmf_event_msg const*,void*) ;
 int brcmf_proto_delete_peer (TYPE_1__*,int ,int *) ;
 int cfg80211_ibss_joined (struct net_device*,scalar_t__,struct ieee80211_channel*,int ) ;
 struct net_device* cfg_to_ndev (struct brcmf_cfg80211_info*) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 struct ieee80211_channel* ieee80211_get_channel (int ,int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int ndev_to_prof (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static s32
brcmf_notify_connect_status(struct brcmf_if *ifp,
       const struct brcmf_event_msg *e, void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 struct net_device *ndev = ifp->ndev;
 struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
 struct ieee80211_channel *chan;
 s32 err = 0;

 if ((e->event_code == BRCMF_E_DEAUTH) ||
     (e->event_code == BRCMF_E_DEAUTH_IND) ||
     (e->event_code == BRCMF_E_DISASSOC_IND) ||
     ((e->event_code == BRCMF_E_LINK) && (!e->flags))) {
  brcmf_proto_delete_peer(ifp->drvr, ifp->ifidx, (u8 *)e->addr);
 }

 if (brcmf_is_apmode(ifp->vif)) {
  err = brcmf_notify_connect_status_ap(cfg, ndev, e, data);
 } else if (brcmf_is_linkup(ifp->vif, e)) {
  brcmf_dbg(CONN, "Linkup\n");
  if (brcmf_is_ibssmode(ifp->vif)) {
   brcmf_inform_ibss(cfg, ndev, e->addr);
   chan = ieee80211_get_channel(cfg->wiphy, cfg->channel);
   memcpy(profile->bssid, e->addr, ETH_ALEN);
   cfg80211_ibss_joined(ndev, e->addr, chan, GFP_KERNEL);
   clear_bit(BRCMF_VIF_STATUS_CONNECTING,
      &ifp->vif->sme_state);
   set_bit(BRCMF_VIF_STATUS_CONNECTED,
    &ifp->vif->sme_state);
  } else
   brcmf_bss_connect_done(cfg, ndev, e, 1);
  brcmf_net_setcarrier(ifp, 1);
 } else if (brcmf_is_linkdown(e)) {
  brcmf_dbg(CONN, "Linkdown\n");
  if (!brcmf_is_ibssmode(ifp->vif)) {
   brcmf_bss_connect_done(cfg, ndev, e, 0);
   brcmf_link_down(ifp->vif,
     brcmf_map_fw_linkdown_reason(e));
   brcmf_init_prof(ndev_to_prof(ndev));
   if (ndev != cfg_to_ndev(cfg))
    complete(&cfg->vif_disabled);
   brcmf_net_setcarrier(ifp, 0);
  }
 } else if (brcmf_is_nonetwork(cfg, e)) {
  if (brcmf_is_ibssmode(ifp->vif))
   clear_bit(BRCMF_VIF_STATUS_CONNECTING,
      &ifp->vif->sme_state);
  else
   brcmf_bss_connect_done(cfg, ndev, e, 0);
 }

 return err;
}
