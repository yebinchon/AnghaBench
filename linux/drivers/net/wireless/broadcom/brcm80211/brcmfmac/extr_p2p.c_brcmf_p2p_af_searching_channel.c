
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct afx_hdl {int is_active; scalar_t__ peer_chan; int is_listen; scalar_t__ my_listen_chan; int act_frm_scan; int afx_work; } ;
struct brcmf_p2p_info {int status; TYPE_1__* bss_idx; struct afx_hdl afx_hdl; } ;
struct brcmf_cfg80211_vif {int sme_state; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_vif* vif; } ;


 int BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL ;
 int BRCMF_VIF_STATUS_CONNECTED ;
 int BRCMF_VIF_STATUS_CONNECTING ;
 size_t P2PAPI_BSSCFG_PRIMARY ;
 int P2P_AF_FRM_SCAN_MAX_WAIT ;
 scalar_t__ P2P_CHANNEL_SYNC_RETRY ;
 int P2P_DEFAULT_SLEEP_TIME_VSDB ;
 scalar_t__ P2P_INVALID_CHANNEL ;
 int TRACE ;
 int brcmf_dbg (int ,char*,...) ;
 int clear_bit (int ,int *) ;
 int msleep (int ) ;
 int reinit_completion (int *) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static s32 brcmf_p2p_af_searching_channel(struct brcmf_p2p_info *p2p)
{
 struct afx_hdl *afx_hdl = &p2p->afx_hdl;
 struct brcmf_cfg80211_vif *pri_vif;
 s32 retry;

 brcmf_dbg(TRACE, "Enter\n");

 pri_vif = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif;

 reinit_completion(&afx_hdl->act_frm_scan);
 set_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status);
 afx_hdl->is_active = 1;
 afx_hdl->peer_chan = P2P_INVALID_CHANNEL;




 retry = 0;
 while ((retry < P2P_CHANNEL_SYNC_RETRY) &&
        (afx_hdl->peer_chan == P2P_INVALID_CHANNEL)) {
  afx_hdl->is_listen = 0;
  brcmf_dbg(TRACE, "Scheduling action frame for sending.. (%d)\n",
     retry);

  schedule_work(&afx_hdl->afx_work);
  wait_for_completion_timeout(&afx_hdl->act_frm_scan,
         P2P_AF_FRM_SCAN_MAX_WAIT);
  if ((afx_hdl->peer_chan != P2P_INVALID_CHANNEL) ||
      (!test_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL,
          &p2p->status)))
   break;

  if (afx_hdl->my_listen_chan) {
   brcmf_dbg(TRACE, "Scheduling listen peer, channel=%d\n",
      afx_hdl->my_listen_chan);

   afx_hdl->is_listen = 1;
   schedule_work(&afx_hdl->afx_work);
   wait_for_completion_timeout(&afx_hdl->act_frm_scan,
          P2P_AF_FRM_SCAN_MAX_WAIT);
  }
  if ((afx_hdl->peer_chan != P2P_INVALID_CHANNEL) ||
      (!test_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL,
          &p2p->status)))
   break;
  retry++;




  if (test_bit(BRCMF_VIF_STATUS_CONNECTED, &pri_vif->sme_state) ||
      test_bit(BRCMF_VIF_STATUS_CONNECTING, &pri_vif->sme_state))
   msleep(P2P_DEFAULT_SLEEP_TIME_VSDB);
 }

 brcmf_dbg(TRACE, "Completed search/listen peer_chan=%d\n",
    afx_hdl->peer_chan);
 afx_hdl->is_active = 0;

 clear_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status);

 return afx_hdl->peer_chan;
}
