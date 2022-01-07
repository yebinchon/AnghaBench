
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cfg80211_scan_request {int dummy; } ;
struct brcmf_if {TYPE_2__* drvr; } ;
struct TYPE_3__ {int run; } ;
struct brcmf_cfg80211_info {scalar_t__ int_escan_map; int scan_status; TYPE_1__ escan_info; } ;
struct TYPE_4__ {struct brcmf_cfg80211_info* config; } ;


 int BRCMF_SCAN_STATUS_BUSY ;
 int SCAN ;
 int brcmf_abort_scanning (struct brcmf_cfg80211_info*) ;
 int brcmf_dbg (int ,char*,scalar_t__) ;
 int brcmf_do_escan (struct brcmf_if*,struct cfg80211_scan_request*) ;
 int brcmf_run_escan ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int brcmf_start_internal_escan(struct brcmf_if *ifp, u32 fwmap,
          struct cfg80211_scan_request *request)
{
 struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
 int err;

 if (test_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status)) {
  if (cfg->int_escan_map)
   brcmf_dbg(SCAN, "aborting internal scan: map=%u\n",
      cfg->int_escan_map);

  brcmf_abort_scanning(cfg);
 }

 brcmf_dbg(SCAN, "start internal scan: map=%u\n", fwmap);
 set_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status);
 cfg->escan_info.run = brcmf_run_escan;
 err = brcmf_do_escan(ifp, request);
 if (err) {
  clear_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status);
  return err;
 }
 cfg->int_escan_map = fwmap;
 return 0;
}
