
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_start_sched_scan_cmd {TYPE_1__* scan_plans; } ;
struct wil6210_priv {int dummy; } ;
struct cfg80211_sched_scan_plan {int iterations; int interval; } ;
struct TYPE_2__ {void* num_of_iterations; void* interval_sec; } ;


 int WMI_MAX_PLANS_NUM ;
 void* cpu_to_le16 (int ) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int,int) ;

__attribute__((used)) static void
wmi_sched_scan_set_plans(struct wil6210_priv *wil,
    struct wmi_start_sched_scan_cmd *cmd,
    struct cfg80211_sched_scan_plan *scan_plans,
    int n_scan_plans)
{
 int i;

 if (n_scan_plans > WMI_MAX_PLANS_NUM) {
  wil_dbg_wmi(wil, "too many plans (%d), use first %d\n",
       n_scan_plans, WMI_MAX_PLANS_NUM);
  n_scan_plans = WMI_MAX_PLANS_NUM;
 }

 for (i = 0; i < n_scan_plans; i++) {
  struct cfg80211_sched_scan_plan *cfg_plan = &scan_plans[i];

  cmd->scan_plans[i].interval_sec =
   cpu_to_le16(cfg_plan->interval);
  cmd->scan_plans[i].num_of_iterations =
   cpu_to_le16(cfg_plan->iterations);
 }
}
