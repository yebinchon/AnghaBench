
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_ssid_ie {scalar_t__ len; int ssid; void* id; } ;
struct iwl_mvm_scan_params {int n_match_sets; int n_ssids; TYPE_3__* ssids; TYPE_2__* match_sets; } ;
struct TYPE_6__ {int ssid; scalar_t__ ssid_len; } ;
struct TYPE_4__ {int ssid; scalar_t__ ssid_len; } ;
struct TYPE_5__ {TYPE_1__ ssid; } ;


 int BIT (int) ;
 int PROBE_OPTION_MAX ;
 void* WLAN_EID_SSID ;
 int iwl_ssid_exist (int ,scalar_t__,struct iwl_ssid_ie*) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static void iwl_scan_build_ssids(struct iwl_mvm_scan_params *params,
     struct iwl_ssid_ie *ssids,
     u32 *ssid_bitmap)
{
 int i, j;
 int index;






 for (i = 0, j = params->n_match_sets - 1;
      j >= 0 && i < PROBE_OPTION_MAX;
      i++, j--) {

  if (!params->match_sets[j].ssid.ssid_len)
   continue;
  ssids[i].id = WLAN_EID_SSID;
  ssids[i].len = params->match_sets[j].ssid.ssid_len;
  memcpy(ssids[i].ssid, params->match_sets[j].ssid.ssid,
         ssids[i].len);
 }


 *ssid_bitmap = 0;
 for (j = params->n_ssids - 1;
      j >= 0 && i < PROBE_OPTION_MAX;
      i++, j--) {
  index = iwl_ssid_exist(params->ssids[j].ssid,
           params->ssids[j].ssid_len,
           ssids);
  if (index < 0) {
   ssids[i].id = WLAN_EID_SSID;
   ssids[i].len = params->ssids[j].ssid_len;
   memcpy(ssids[i].ssid, params->ssids[j].ssid,
          ssids[i].len);
   *ssid_bitmap |= BIT(i);
  } else {
   *ssid_bitmap |= BIT(index);
  }
 }
}
