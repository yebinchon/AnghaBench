
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int max_sched_scan_reqs; int max_sched_scan_plan_interval; int max_sched_scan_ie_len; void* max_match_sets; void* max_sched_scan_ssids; } ;


 int BRCMF_PNO_MAX_BUCKETS ;
 void* BRCMF_PNO_MAX_PFN_COUNT ;
 int BRCMF_PNO_SCHED_SCAN_MAX_PERIOD ;
 int BRCMF_SCAN_IE_LEN_MAX ;

void brcmf_pno_wiphy_params(struct wiphy *wiphy, bool gscan)
{

 wiphy->max_sched_scan_reqs = gscan ? BRCMF_PNO_MAX_BUCKETS : 1;
 wiphy->max_sched_scan_ssids = BRCMF_PNO_MAX_PFN_COUNT;
 wiphy->max_match_sets = BRCMF_PNO_MAX_PFN_COUNT;
 wiphy->max_sched_scan_ie_len = BRCMF_SCAN_IE_LEN_MAX;
 wiphy->max_sched_scan_plan_interval = BRCMF_PNO_SCHED_SCAN_MAX_PERIOD;
}
