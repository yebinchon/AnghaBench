
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct brcmu_chan {int chspec; int bw; int chnum; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {int remain_on_channel_cookie; int status; TYPE_3__* cfg; TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_vif {int ifp; } ;
typedef int s32 ;
struct TYPE_5__ {int (* encchspec ) (struct brcmu_chan*) ;} ;
struct TYPE_6__ {TYPE_2__ d11inf; struct brcmf_pub* pub; } ;
struct TYPE_4__ {struct brcmf_cfg80211_vif* vif; } ;


 int BRCMF_P2P_STATUS_DISCOVER_LISTEN ;
 int BRCMU_CHAN_BW_20 ;
 int EPERM ;
 size_t P2PAPI_BSSCFG_DEVICE ;
 int WL_P2P_DISC_ST_LISTEN ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_p2p_set_discover_state (int ,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct brcmu_chan*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static s32
brcmf_p2p_discover_listen(struct brcmf_p2p_info *p2p, u16 channel, u32 duration)
{
 struct brcmf_pub *drvr = p2p->cfg->pub;
 struct brcmf_cfg80211_vif *vif;
 struct brcmu_chan ch;
 s32 err = 0;

 vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
 if (!vif) {
  bphy_err(drvr, "Discovery is not set, so we have nothing to do\n");
  err = -EPERM;
  goto exit;
 }

 if (test_bit(BRCMF_P2P_STATUS_DISCOVER_LISTEN, &p2p->status)) {
  bphy_err(drvr, "Previous LISTEN is not completed yet\n");

  goto exit;
 }

 ch.chnum = channel;
 ch.bw = BRCMU_CHAN_BW_20;
 p2p->cfg->d11inf.encchspec(&ch);
 err = brcmf_p2p_set_discover_state(vif->ifp, WL_P2P_DISC_ST_LISTEN,
        ch.chspec, (u16)duration);
 if (!err) {
  set_bit(BRCMF_P2P_STATUS_DISCOVER_LISTEN, &p2p->status);
  p2p->remain_on_channel_cookie++;
 }
exit:
 return err;
}
