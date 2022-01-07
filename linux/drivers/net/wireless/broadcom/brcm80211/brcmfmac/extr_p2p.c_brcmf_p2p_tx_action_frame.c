
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_pub {int dummy; } ;
struct TYPE_6__ {int center_freq; } ;
struct brcmf_p2p_info {scalar_t__ af_sent_channel; int wait_for_offchan_complete; int status; int send_af_done; TYPE_3__ remain_on_channel; int af_tx_sent_jiffies; TYPE_2__* bss_idx; TYPE_1__* cfg; } ;
struct brcmf_fil_af_params_le {int channel; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
typedef int s32 ;
struct TYPE_5__ {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_4__ {struct brcmf_pub* pub; } ;


 int BRCMF_P2P_STATUS_ACTION_TX_COMPLETED ;
 int BRCMF_P2P_STATUS_ACTION_TX_NOACK ;
 int BRCMF_P2P_STATUS_DISCOVER_LISTEN ;
 int EIO ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 int P2P_AF_MAX_WAIT_TIME ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_bsscfg_data_set (int ,char*,struct brcmf_fil_af_params_le*,int) ;
 int clear_bit (int ,int *) ;
 scalar_t__ ieee80211_frequency_to_channel (int ) ;
 int jiffies ;
 scalar_t__ le32_to_cpu (int ) ;
 int reinit_completion (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static s32 brcmf_p2p_tx_action_frame(struct brcmf_p2p_info *p2p,
         struct brcmf_fil_af_params_le *af_params)
{
 struct brcmf_pub *drvr = p2p->cfg->pub;
 struct brcmf_cfg80211_vif *vif;
 s32 err = 0;
 s32 timeout = 0;

 brcmf_dbg(TRACE, "Enter\n");

 reinit_completion(&p2p->send_af_done);
 clear_bit(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status);
 clear_bit(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);

 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 err = brcmf_fil_bsscfg_data_set(vif->ifp, "actframe", af_params,
     sizeof(*af_params));
 if (err) {
  bphy_err(drvr, " sending action frame has failed\n");
  goto exit;
 }

 p2p->af_sent_channel = le32_to_cpu(af_params->channel);
 p2p->af_tx_sent_jiffies = jiffies;

 if (test_bit(BRCMF_P2P_STATUS_DISCOVER_LISTEN, &p2p->status) &&
     p2p->af_sent_channel ==
     ieee80211_frequency_to_channel(p2p->remain_on_channel.center_freq))
  p2p->wait_for_offchan_complete = 0;
 else
  p2p->wait_for_offchan_complete = 1;

 brcmf_dbg(TRACE, "Waiting for %s tx completion event\n",
    (p2p->wait_for_offchan_complete) ?
     "off-channel" : "on-channel");

 timeout = wait_for_completion_timeout(&p2p->send_af_done,
           P2P_AF_MAX_WAIT_TIME);

 if (test_bit(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status)) {
  brcmf_dbg(TRACE, "TX action frame operation is success\n");
 } else {
  err = -EIO;
  brcmf_dbg(TRACE, "TX action frame operation has failed\n");
 }

 clear_bit(BRCMF_P2P_STATUS_ACTION_TX_COMPLETED, &p2p->status);
 clear_bit(BRCMF_P2P_STATUS_ACTION_TX_NOACK, &p2p->status);

exit:
 return err;
}
