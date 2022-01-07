
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;


 int WIL_WMI_CALL_GENERAL_TO_MS ;
 int WMI_DISCOVERY_STOPPED_EVENTID ;
 int WMI_DISCOVERY_STOP_CMDID ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wmi_call (struct wil6210_priv*,int ,int ,int *,int ,int ,int *,int ,int ) ;

int wmi_stop_discovery(struct wil6210_vif *vif)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 int rc;

 wil_dbg_wmi(wil, "sending WMI_DISCOVERY_STOP_CMDID\n");

 rc = wmi_call(wil, WMI_DISCOVERY_STOP_CMDID, vif->mid, ((void*)0), 0,
        WMI_DISCOVERY_STOPPED_EVENTID, ((void*)0), 0,
        WIL_WMI_CALL_GENERAL_TO_MS);

 if (rc)
  wil_err(wil, "Failed to stop discovery\n");

 return rc;
}
