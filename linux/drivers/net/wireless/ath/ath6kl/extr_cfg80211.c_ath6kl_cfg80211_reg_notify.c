
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wiphy {TYPE_1__** bands; } ;
struct regulatory_request {scalar_t__ user_reg_hint_type; int * alpha2; int initiator; scalar_t__ processed; scalar_t__ intersect; } ;
struct ath6kl {int wmi; } ;
struct TYPE_2__ {int n_bitrates; } ;


 int ATH6KL_DBG_WLAN_CFG ;
 int ATH6KL_FG_SCAN_INTERVAL ;
 scalar_t__ NL80211_USER_REG_HINT_CELL_BASE ;
 int NUM_NL80211_BANDS ;
 int WMI_LONG_SCAN ;
 int ath6kl_dbg (int ,char*,int ,int ,char*,char*,int ,scalar_t__) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_wmi_beginscan_cmd (int ,int ,int ,int,int,int ,int ,int ,int *,int,int*) ;
 int ath6kl_wmi_set_regdomain_cmd (int ,int *) ;
 struct ath6kl* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void ath6kl_cfg80211_reg_notify(struct wiphy *wiphy,
           struct regulatory_request *request)
{
 struct ath6kl *ar = wiphy_priv(wiphy);
 u32 rates[NUM_NL80211_BANDS];
 int ret, i;

 ath6kl_dbg(ATH6KL_DBG_WLAN_CFG,
     "cfg reg_notify %c%c%s%s initiator %d hint_type %d\n",
     request->alpha2[0], request->alpha2[1],
     request->intersect ? " intersect" : "",
     request->processed ? " processed" : "",
     request->initiator, request->user_reg_hint_type);

 if (request->user_reg_hint_type != NL80211_USER_REG_HINT_CELL_BASE)
  return;

 ret = ath6kl_wmi_set_regdomain_cmd(ar->wmi, request->alpha2);
 if (ret) {
  ath6kl_err("failed to set regdomain: %d\n", ret);
  return;
 }







 for (i = 0; i < NUM_NL80211_BANDS; i++)
  if (wiphy->bands[i])
   rates[i] = (1 << wiphy->bands[i]->n_bitrates) - 1;


 ret = ath6kl_wmi_beginscan_cmd(ar->wmi, 0, WMI_LONG_SCAN, 0,
           0, 0, ATH6KL_FG_SCAN_INTERVAL,
           0, ((void*)0), 0, rates);
 if (ret) {
  ath6kl_err("failed to start scan for a regdomain change: %d\n",
      ret);
  return;
 }
}
