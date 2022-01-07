
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcmu_chan {scalar_t__ band; int chspec; int control_ch_num; } ;
struct brcmf_rx_mgmt_data {int chanspec; } ;
struct afx_hdl {int act_frm_scan; int peer_chan; int tx_dst_addr; } ;
struct brcmf_p2p_info {int status; struct afx_hdl afx_hdl; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; TYPE_1__* drvr; } ;
struct brcmf_event_msg {int datalen; scalar_t__ bsscfgidx; int addr; int reason; int event_code; } ;
struct brcmf_cfg80211_vif {int mgmt_rx_reg; int wdev; } ;
struct TYPE_4__ {int (* decchspec ) (struct brcmu_chan*) ;} ;
struct brcmf_cfg80211_info {TYPE_2__ d11inf; struct brcmf_p2p_info p2p; } ;
typedef int s32 ;
struct TYPE_3__ {struct brcmf_cfg80211_info* config; } ;


 int BIT (int) ;
 int BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL ;
 int BRCMF_P2P_STATUS_GO_NEG_PHASE ;
 scalar_t__ BRCMU_CHAN_BAND_2G ;
 int IEEE80211_FCTL_STYPE ;
 int IEEE80211_STYPE_PROBE_REQ ;
 int INFO ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int SCAN ;
 int be16_to_cpu (int ) ;
 int brcmf_dbg (int ,char*,...) ;
 int cfg80211_rx_mgmt (int *,int ,int ,int *,int,int ) ;
 int complete (int *) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ieee80211_channel_to_frequency (int ,int ) ;
 int stub1 (struct brcmu_chan*) ;
 scalar_t__ test_bit (int ,int *) ;

s32 brcmf_p2p_notify_rx_mgmt_p2p_probereq(struct brcmf_if *ifp,
       const struct brcmf_event_msg *e,
       void *data)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 struct brcmf_p2p_info *p2p = &cfg->p2p;
 struct afx_hdl *afx_hdl = &p2p->afx_hdl;
 struct brcmf_cfg80211_vif *vif = ifp->vif;
 struct brcmf_rx_mgmt_data *rxframe = (struct brcmf_rx_mgmt_data *)data;
 struct brcmu_chan ch;
 u8 *mgmt_frame;
 u32 mgmt_frame_len;
 s32 freq;
 u16 mgmt_type;

 brcmf_dbg(INFO, "Enter: event %d reason %d\n", e->event_code,
    e->reason);

 if (e->datalen < sizeof(*rxframe)) {
  brcmf_dbg(SCAN, "Event data to small. Ignore\n");
  return 0;
 }

 ch.chspec = be16_to_cpu(rxframe->chanspec);
 cfg->d11inf.decchspec(&ch);

 if (test_bit(BRCMF_P2P_STATUS_FINDING_COMMON_CHANNEL, &p2p->status) &&
     (ether_addr_equal(afx_hdl->tx_dst_addr, e->addr))) {
  afx_hdl->peer_chan = ch.control_ch_num;
  brcmf_dbg(INFO, "PROBE REQUEST: Peer found, channel=%d\n",
     afx_hdl->peer_chan);
  complete(&afx_hdl->act_frm_scan);
 }



 if (e->bsscfgidx == 0)
  return 0;


 if (test_bit(BRCMF_P2P_STATUS_GO_NEG_PHASE, &p2p->status)) {
  brcmf_dbg(INFO, "Filtering P2P probe_req in GO-NEG phase\n");
  return 0;
 }


 brcmf_dbg(INFO, "vif->mgmt_rx_reg %04x\n", vif->mgmt_rx_reg);
 mgmt_type = (IEEE80211_STYPE_PROBE_REQ & IEEE80211_FCTL_STYPE) >> 4;
 if ((vif->mgmt_rx_reg & BIT(mgmt_type)) == 0)
  return 0;

 mgmt_frame = (u8 *)(rxframe + 1);
 mgmt_frame_len = e->datalen - sizeof(*rxframe);
 freq = ieee80211_channel_to_frequency(ch.control_ch_num,
           ch.band == BRCMU_CHAN_BAND_2G ?
           NL80211_BAND_2GHZ :
           NL80211_BAND_5GHZ);

 cfg80211_rx_mgmt(&vif->wdev, freq, 0, mgmt_frame, mgmt_frame_len, 0);

 brcmf_dbg(INFO, "mgmt_frame_len (%d) , e->datalen (%d), chanspec (%04x), freq (%d)\n",
    mgmt_frame_len, e->datalen, ch.chspec, freq);

 return 0;
}
