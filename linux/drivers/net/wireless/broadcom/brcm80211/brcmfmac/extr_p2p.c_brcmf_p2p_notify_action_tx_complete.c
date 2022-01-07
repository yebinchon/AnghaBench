
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_p2p_info {int send_af_done; int status; int wait_for_offchan_complete; } ;
struct brcmf_if {TYPE_1__* drvr; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ status; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
struct TYPE_2__ {struct brcmf_cfg80211_info* config; } ;


 scalar_t__ BRCMF_E_ACTION_FRAME_COMPLETE ;
 scalar_t__ BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE ;
 scalar_t__ BRCMF_E_STATUS_SUCCESS ;
 int BRCMF_P2P_STATUS_ACTION_TX_COMPLETED ;
 int BRCMF_P2P_STATUS_ACTION_TX_NOACK ;
 int BRCMF_P2P_STATUS_SENDING_ACT_FRAME ;
 int INFO ;
 int brcmf_dbg (int ,char*,char*,scalar_t__) ;
 int brcmf_p2p_stop_wait_next_action_frame (struct brcmf_cfg80211_info*) ;
 int complete (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int brcmf_p2p_notify_action_tx_complete(struct brcmf_if *ifp,
     const struct brcmf_event_msg *e,
     void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 struct brcmf_p2p_info *p2p = &cfg->p2p;

 brcmf_dbg(INFO, "Enter: event %s, status=%d\n",
    e->event_code == BRCMF_E_ACTION_FRAME_OFF_CHAN_COMPLETE ?
    "ACTION_FRAME_OFF_CHAN_COMPLETE" : "ACTION_FRAME_COMPLETE",
    e->status);

 if (!test_bit(BRCMF_P2P_STATUS_SENDING_ACT_FRAME, &p2p->status))
  return 0;

 if (e->event_code == BRCMF_E_ACTION_FRAME_COMPLETE) {
  if (e->status == BRCMF_E_STATUS_SUCCESS) {
   set_bit(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED,
    &p2p->status);
   if (!p2p->wait_for_offchan_complete)
    complete(&p2p->send_af_done);
  } else {
   set_bit(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);



   brcmf_p2p_stop_wait_next_action_frame(cfg);
  }

 } else {
  complete(&p2p->send_af_done);
 }
 return 0;
}
