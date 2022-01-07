
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_p2p_info {int status; scalar_t__ af_sent_channel; TYPE_2__* bss_idx; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
struct TYPE_4__ {TYPE_1__* vif; } ;
struct TYPE_3__ {struct brcmf_if* ifp; } ;


 int BRCMF_P2P_STATUS_ACTION_TX_COMPLETED ;
 int BRCMF_P2P_STATUS_ACTION_TX_NOACK ;
 int BRCMF_P2P_STATUS_SENDING_ACT_FRAME ;
 int BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_notify_escan_complete (struct brcmf_cfg80211_info*,struct brcmf_if*,int,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
brcmf_p2p_stop_wait_next_action_frame(struct brcmf_cfg80211_info *cfg)
{
 struct brcmf_p2p_info *p2p = &cfg->p2p;
 struct brcmf_if *ifp = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif->ifp;

 if (test_bit(BRCMF_P2P_STATUS_SENDING_ACT_FRAME, &p2p->status) &&
     (test_bit(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status) ||
      test_bit(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status))) {
  brcmf_dbg(TRACE, "*** Wake UP ** abort actframe iovar\n");



  if (p2p->af_sent_channel)
   brcmf_notify_escan_complete(cfg, ifp, 1, 1);
 } else if (test_bit(BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN,
       &p2p->status)) {
  brcmf_dbg(TRACE, "*** Wake UP ** abort listen for next af frame\n");

  brcmf_notify_escan_complete(cfg, ifp, 1, 1);
 }
}
