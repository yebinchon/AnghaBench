
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct escan_info {int ifp; int escan_state; } ;
struct brcmf_cfg80211_info {int scan_status; scalar_t__ scan_request; scalar_t__ int_escan_map; struct escan_info escan_info; } ;


 int BRCMF_SCAN_STATUS_ABORT ;
 int BRCMF_SCAN_STATUS_BUSY ;
 int WL_ESCAN_STATE_IDLE ;
 int brcmf_notify_escan_complete (struct brcmf_cfg80211_info*,int ,int,int) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

void brcmf_abort_scanning(struct brcmf_cfg80211_info *cfg)
{
 struct escan_info *escan = &cfg->escan_info;

 set_bit(BRCMF_SCAN_STATUS_ABORT, &cfg->scan_status);
 if (cfg->int_escan_map || cfg->scan_request) {
  escan->escan_state = WL_ESCAN_STATE_IDLE;
  brcmf_notify_escan_complete(cfg, escan->ifp, 1, 1);
 }
 clear_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status);
 clear_bit(BRCMF_SCAN_STATUS_ABORT, &cfg->scan_status);
}
