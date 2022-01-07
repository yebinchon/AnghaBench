
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_p2p_info {int remain_on_channel; int remain_on_channel_cookie; int wait_next_af; int status; } ;
struct brcmf_if {TYPE_1__* vif; TYPE_2__* drvr; } ;
struct brcmf_event_msg {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_p2p_info p2p; } ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;
struct TYPE_3__ {int wdev; } ;


 int BRCMF_P2P_STATUS_DISCOVER_LISTEN ;
 int BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME ;
 int BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN ;
 int GFP_KERNEL ;
 int INFO ;
 int TRACE ;
 int brcmf_dbg (int ,char*) ;
 int cfg80211_remain_on_channel_expired (int *,int ,int *,int ) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

int brcmf_p2p_notify_listen_complete(struct brcmf_if *ifp,
         const struct brcmf_event_msg *e,
         void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 struct brcmf_p2p_info *p2p = &cfg->p2p;

 brcmf_dbg(TRACE, "Enter\n");
 if (test_and_clear_bit(BRCMF_P2P_STATUS_DISCOVER_LISTEN,
          &p2p->status)) {
  if (test_and_clear_bit(BRCMF_P2P_STATUS_WAITING_NEXT_AF_LISTEN,
           &p2p->status)) {
   clear_bit(BRCMF_P2P_STATUS_WAITING_NEXT_ACT_FRAME,
      &p2p->status);
   brcmf_dbg(INFO, "Listen DONE, wake up wait_next_af\n");
   complete(&p2p->wait_next_af);
  }

  cfg80211_remain_on_channel_expired(&ifp->vif->wdev,
         p2p->remain_on_channel_cookie,
         &p2p->remain_on_channel,
         GFP_KERNEL);
 }
 return 0;
}
