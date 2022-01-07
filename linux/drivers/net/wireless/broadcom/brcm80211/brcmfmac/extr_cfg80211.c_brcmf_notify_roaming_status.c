
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct brcmf_if {int ndev; TYPE_1__* vif; TYPE_2__* drvr; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ status; } ;
struct brcmf_cfg80211_info {int dummy; } ;
typedef int s32 ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;
struct TYPE_3__ {int sme_state; } ;


 scalar_t__ BRCMF_E_ROAM ;
 scalar_t__ BRCMF_E_STATUS_SUCCESS ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 int brcmf_bss_connect_done (struct brcmf_cfg80211_info*,int ,struct brcmf_event_msg const*,int) ;
 int brcmf_bss_roaming_done (struct brcmf_cfg80211_info*,int ,struct brcmf_event_msg const*) ;
 int brcmf_net_setcarrier (struct brcmf_if*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static s32
brcmf_notify_roaming_status(struct brcmf_if *ifp,
       const struct brcmf_event_msg *e, void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 u32 event = e->event_code;
 u32 status = e->status;

 if (event == BRCMF_E_ROAM && status == BRCMF_E_STATUS_SUCCESS) {
  if (test_bit(BRCMF_VIF_STATUS_CONNECTED,
        &ifp->vif->sme_state)) {
   brcmf_bss_roaming_done(cfg, ifp->ndev, e);
  } else {
   brcmf_bss_connect_done(cfg, ifp->ndev, e, 1);
   brcmf_net_setcarrier(ifp, 1);
  }
 }

 return 0;
}
