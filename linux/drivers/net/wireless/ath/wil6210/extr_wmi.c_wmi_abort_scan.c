
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;


 int WMI_ABORT_SCAN_CMDID ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wmi_send (struct wil6210_priv*,int ,int ,int *,int ) ;

int wmi_abort_scan(struct wil6210_vif *vif)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 int rc;

 wil_dbg_wmi(wil, "sending WMI_ABORT_SCAN_CMDID\n");

 rc = wmi_send(wil, WMI_ABORT_SCAN_CMDID, vif->mid, ((void*)0), 0);
 if (rc)
  wil_err(wil, "Failed to abort scan (%d)\n", rc);

 return rc;
}
