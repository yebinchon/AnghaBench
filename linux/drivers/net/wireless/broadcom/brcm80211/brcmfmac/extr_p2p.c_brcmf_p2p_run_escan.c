
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct ieee80211_channel {scalar_t__ hw_value; int flags; } ;
struct cfg80211_scan_request {int n_channels; struct ieee80211_channel** channels; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {TYPE_3__* cfg; TYPE_1__* bss_idx; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_5__ {scalar_t__ iftype; struct net_device* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_2__ wdev; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; struct brcmf_p2p_info p2p; } ;
typedef int s32 ;
struct TYPE_6__ {int d11inf; } ;
struct TYPE_4__ {struct brcmf_cfg80211_vif* vif; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 int INFO ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 size_t P2PAPI_BSSCFG_CONNECTION ;
 int P2PAPI_BSSCFG_DEVICE ;
 scalar_t__ SOCIAL_CHAN_1 ;
 scalar_t__ SOCIAL_CHAN_2 ;
 scalar_t__ SOCIAL_CHAN_3 ;
 int TRACE ;
 int WL_P2P_DISC_ST_SCAN ;
 int WL_P2P_DISC_ST_SEARCH ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_p2p_escan (struct brcmf_p2p_info*,int,int *,int,int ) ;
 int channel_to_chanspec (int *,struct ieee80211_channel*) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;

__attribute__((used)) static s32 brcmf_p2p_run_escan(struct brcmf_cfg80211_info *cfg,
          struct brcmf_if *ifp,
          struct cfg80211_scan_request *request)
{
 struct brcmf_p2p_info *p2p = &cfg->p2p;
 struct brcmf_pub *drvr = cfg->pub;
 s32 err = 0;
 s32 search_state = WL_P2P_DISC_ST_SCAN;
 struct brcmf_cfg80211_vif *vif;
 struct net_device *dev = ((void*)0);
 int i, num_nodfs = 0;
 u16 *chanspecs;

 brcmf_dbg(TRACE, "enter\n");

 if (!request) {
  err = -EINVAL;
  goto exit;
 }

 if (request->n_channels) {
  chanspecs = kcalloc(request->n_channels, sizeof(*chanspecs),
        GFP_KERNEL);
  if (!chanspecs) {
   err = -ENOMEM;
   goto exit;
  }
  vif = p2p->bss_idx[P2PAPI_BSSCFG_CONNECTION].vif;
  if (vif)
   dev = vif->wdev.netdev;
  if (request->n_channels == 3 &&
      request->channels[0]->hw_value == SOCIAL_CHAN_1 &&
      request->channels[1]->hw_value == SOCIAL_CHAN_2 &&
      request->channels[2]->hw_value == SOCIAL_CHAN_3) {

   search_state = WL_P2P_DISC_ST_SEARCH;
   brcmf_dbg(INFO, "P2P SEARCH PHASE START\n");
  } else if (dev != ((void*)0) &&
      vif->wdev.iftype == NL80211_IFTYPE_P2P_GO) {

   brcmf_dbg(INFO, "Already a GO. Do SEARCH Only\n");
   search_state = WL_P2P_DISC_ST_SEARCH;
  } else {
   brcmf_dbg(INFO, "P2P SCAN STATE START\n");
  }




  for (i = 0; i < request->n_channels; i++) {
   struct ieee80211_channel *chan = request->channels[i];

   if (chan->flags & (IEEE80211_CHAN_RADAR |
        IEEE80211_CHAN_NO_IR))
    continue;

   chanspecs[i] = channel_to_chanspec(&p2p->cfg->d11inf,
          chan);
   brcmf_dbg(INFO, "%d: chan=%d, channel spec=%x\n",
      num_nodfs, chan->hw_value, chanspecs[i]);
   num_nodfs++;
  }
  err = brcmf_p2p_escan(p2p, num_nodfs, chanspecs, search_state,
          P2PAPI_BSSCFG_DEVICE);
  kfree(chanspecs);
 }
exit:
 if (err)
  bphy_err(drvr, "error (%d)\n", err);
 return err;
}
