
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct escan_info {scalar_t__ (* run ) (struct brcmf_cfg80211_info*,struct brcmf_if*,struct cfg80211_scan_request*) ;scalar_t__ escan_buf; int escan_state; int wiphy; struct brcmf_if* ifp; } ;
struct cfg80211_scan_request {int dummy; } ;
struct brcmf_scan_results {int buflen; scalar_t__ count; scalar_t__ version; } ;
struct brcmf_if {TYPE_1__* drvr; } ;
struct brcmf_cfg80211_info {struct escan_info escan_info; int wiphy; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_info* config; } ;


 int SCAN ;
 int WL_ESCAN_RESULTS_FIXED_SIZE ;
 int WL_ESCAN_STATE_SCANNING ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_scan_config_mpc (struct brcmf_if*,int) ;
 scalar_t__ stub1 (struct brcmf_cfg80211_info*,struct brcmf_if*,struct cfg80211_scan_request*) ;

__attribute__((used)) static s32
brcmf_do_escan(struct brcmf_if *ifp, struct cfg80211_scan_request *request)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 s32 err;
 struct brcmf_scan_results *results;
 struct escan_info *escan = &cfg->escan_info;

 brcmf_dbg(SCAN, "Enter\n");
 escan->ifp = ifp;
 escan->wiphy = cfg->wiphy;
 escan->escan_state = WL_ESCAN_STATE_SCANNING;

 brcmf_scan_config_mpc(ifp, 0);
 results = (struct brcmf_scan_results *)cfg->escan_info.escan_buf;
 results->version = 0;
 results->count = 0;
 results->buflen = WL_ESCAN_RESULTS_FIXED_SIZE;

 err = escan->run(cfg, ifp, request);
 if (err)
  brcmf_scan_config_mpc(ifp, 1);
 return err;
}
