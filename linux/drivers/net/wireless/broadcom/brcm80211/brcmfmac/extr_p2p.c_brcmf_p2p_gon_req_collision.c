
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int act_frm_scan; } ;
struct brcmf_p2p_info {int block_gon_req_tx; int status; TYPE_3__ afx_hdl; TYPE_2__* bss_idx; int gon_req_action; struct brcmf_cfg80211_info* cfg; } ;
struct brcmf_if {int mac_addr; } ;
struct brcmf_cfg80211_info {int dummy; } ;
struct TYPE_5__ {TYPE_1__* vif; } ;
struct TYPE_4__ {struct brcmf_if* ifp; } ;


 int BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL ;
 int BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME ;
 int ETH_ALEN ;
 int INFO ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_p2p_stop_wait_next_action_frame (struct brcmf_cfg80211_info*) ;
 int complete (int *) ;
 scalar_t__ memcmp (int *,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
brcmf_p2p_gon_req_collision(struct brcmf_p2p_info *p2p, u8 *mac)
{
 struct brcmf_cfg80211_info *cfg = p2p->cfg;
 struct brcmf_if *ifp;

 brcmf_dbg(TRACE, "Enter\n");

 if (!test_bit(BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME, &p2p->status) ||
     !p2p->gon_req_action)
  return 0;

 brcmf_dbg(TRACE, "GO Negotiation Request COLLISION !!!\n");





 ifp = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif->ifp;
 if (memcmp(mac, ifp->mac_addr, ETH_ALEN) < 0) {
  brcmf_dbg(INFO, "Block transmit gon req !!!\n");
  p2p->block_gon_req_tx = 1;



  if (test_and_clear_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL,
           &p2p->status))
   complete(&p2p->afx_hdl.act_frm_scan);
  if (test_and_clear_bit(BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME,
           &p2p->status))
   brcmf_p2p_stop_wait_next_action_frame(cfg);
  return 0;
 }


 brcmf_dbg(INFO, "Drop received gon req !!!\n");

 return 1;
}
