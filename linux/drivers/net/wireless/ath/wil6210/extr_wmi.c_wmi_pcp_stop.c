
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;


 int WIL_WMI_PCP_STOP_TO_MS ;
 int WMI_PCP_STOPPED_EVENTID ;
 int WMI_PCP_STOP_CMDID ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wmi_call (struct wil6210_priv*,int ,int ,int *,int ,int ,int *,int ,int ) ;
 int wmi_led_cfg (struct wil6210_priv*,int) ;

int wmi_pcp_stop(struct wil6210_vif *vif)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 int rc;

 rc = wmi_led_cfg(wil, 0);
 if (rc)
  return rc;

 return wmi_call(wil, WMI_PCP_STOP_CMDID, vif->mid, ((void*)0), 0,
   WMI_PCP_STOPPED_EVENTID, ((void*)0), 0,
   WIL_WMI_PCP_STOP_TO_MS);
}
