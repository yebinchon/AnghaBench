
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int sched_scan_pass_all; } ;
struct cfg80211_sched_scan_request {scalar_t__ n_match_sets; TYPE_2__* match_sets; } ;
struct TYPE_3__ {scalar_t__ ssid_len; } ;
struct TYPE_4__ {TYPE_1__ ssid; } ;


 int IWL_DEBUG_SCAN (struct iwl_mvm*,char*,...) ;
 int SCHED_SCAN_PASS_ALL_DISABLED ;
 int SCHED_SCAN_PASS_ALL_ENABLED ;

__attribute__((used)) static bool iwl_mvm_scan_pass_all(struct iwl_mvm *mvm,
      struct cfg80211_sched_scan_request *req)
{
 if (req->n_match_sets && req->match_sets[0].ssid.ssid_len) {
  IWL_DEBUG_SCAN(mvm,
          "Sending scheduled scan with filtering, n_match_sets %d\n",
          req->n_match_sets);
  mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_DISABLED;
  return 0;
 }

 IWL_DEBUG_SCAN(mvm, "Sending Scheduled scan without filtering\n");

 mvm->sched_scan_pass_all = SCHED_SCAN_PASS_ALL_ENABLED;
 return 1;
}
