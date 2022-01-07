
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wil6210_vif {int assocresp_ies_len; int assocresp_ies; int proberesp_ies_len; int proberesp_ies; int proberesp_len; int proberesp; } ;
struct cfg80211_beacon_data {int * tail; int tail_len; int * assocresp_ies; int assocresp_ies_len; int proberesp_ies_len; int * proberesp_ies; int probe_resp_len; int * probe_resp; } ;


 int WMI_FRAME_ASSOC_RESP ;
 int WMI_FRAME_BEACON ;
 int WMI_FRAME_PROBE_RESP ;
 int * _wil_cfg80211_get_proberesp_ies (int *,int ,int *) ;
 int _wil_cfg80211_merge_extra_ies (int *,int ,int *,int ,int **,int *) ;
 int kfree (int *) ;
 int wil_memdup_ie (int *,int *,int *,int ) ;
 int wmi_set_ie (struct wil6210_vif*,int ,int ,int *) ;

__attribute__((used)) static int _wil_cfg80211_set_ies(struct wil6210_vif *vif,
     struct cfg80211_beacon_data *bcon)
{
 int rc;
 u16 len = 0, proberesp_len = 0;
 u8 *ies = ((void*)0), *proberesp;


 wil_memdup_ie(&vif->proberesp, &vif->proberesp_len, bcon->probe_resp,
        bcon->probe_resp_len);
 wil_memdup_ie(&vif->proberesp_ies, &vif->proberesp_ies_len,
        bcon->proberesp_ies, bcon->proberesp_ies_len);
 wil_memdup_ie(&vif->assocresp_ies, &vif->assocresp_ies_len,
        bcon->assocresp_ies, bcon->assocresp_ies_len);

 proberesp = _wil_cfg80211_get_proberesp_ies(bcon->probe_resp,
          bcon->probe_resp_len,
          &proberesp_len);
 rc = _wil_cfg80211_merge_extra_ies(proberesp,
        proberesp_len,
        bcon->proberesp_ies,
        bcon->proberesp_ies_len,
        &ies, &len);

 if (rc)
  goto out;

 rc = wmi_set_ie(vif, WMI_FRAME_PROBE_RESP, len, ies);
 if (rc)
  goto out;

 if (bcon->assocresp_ies)
  rc = wmi_set_ie(vif, WMI_FRAME_ASSOC_RESP,
    bcon->assocresp_ies_len, bcon->assocresp_ies);
 else
  rc = wmi_set_ie(vif, WMI_FRAME_ASSOC_RESP, len, ies);







out:
 kfree(ies);
 return rc;
}
