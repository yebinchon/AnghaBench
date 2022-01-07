
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct cfg80211_scan_request {int ie_len; int ie; } ;
struct TYPE_4__ {int my_listen_chan; } ;
struct brcmf_p2p_info {TYPE_2__* bss_idx; int status; TYPE_1__ afx_hdl; } ;
struct brcmf_cfg80211_vif {int dummy; } ;
struct TYPE_6__ {int run; } ;
struct brcmf_cfg80211_info {TYPE_3__ escan_info; struct brcmf_p2p_info p2p; } ;
struct TYPE_5__ {struct brcmf_cfg80211_vif* vif; } ;


 int BRCMF_P2P_STATUS_GO_NEG_PHASE ;
 int INFO ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_p2p_enable_discovery (struct brcmf_p2p_info*) ;
 int brcmf_p2p_find_listen_channel (int ,int ) ;
 int brcmf_p2p_run_escan ;
 scalar_t__ brcmf_p2p_scan_is_p2p_request (struct cfg80211_scan_request*) ;
 int clear_bit (int ,int *) ;
 struct brcmf_cfg80211_info* wiphy_to_cfg (struct wiphy*) ;

int brcmf_p2p_scan_prep(struct wiphy *wiphy,
   struct cfg80211_scan_request *request,
   struct brcmf_cfg80211_vif *vif)
{
 struct brcmf_cfg80211_info *cfg = wiphy_to_cfg(wiphy);
 struct brcmf_p2p_info *p2p = &cfg->p2p;
 int err;

 if (brcmf_p2p_scan_is_p2p_request(request)) {

  err = brcmf_p2p_find_listen_channel(request->ie,
          request->ie_len);
  if (err < 0)
   return err;

  p2p->afx_hdl.my_listen_chan = err;

  clear_bit(BRCMF_P2P_STATUS_GO_NEG_PHASE, &p2p->status);
  brcmf_dbg(INFO, "P2P: GO_NEG_PHASE status cleared\n");

  err = brcmf_p2p_enable_discovery(p2p);
  if (err)
   return err;

  vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;


  cfg->escan_info.run = brcmf_p2p_run_escan;
 }
 return 0;
}
