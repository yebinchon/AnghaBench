
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int locally_generated_disc; int mid; int status; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int WIL6210_DISCONNECT_TO_MS ;
 int WMI_DISCONNECT_CMDID ;
 int WMI_DISCONNECT_EVENTID ;
 struct wil6210_vif* ndev_to_vif (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,int ,int ) ;
 int wil_err (struct wil6210_priv*,char*,...) ;
 int wil_vif_fwconnected ;
 int wil_vif_fwconnecting ;
 struct wil6210_priv* wiphy_to_wil (struct wiphy*) ;
 int wmi_call (struct wil6210_priv*,int ,int ,int *,int ,int ,int *,int ,int ) ;

__attribute__((used)) static int wil_cfg80211_disconnect(struct wiphy *wiphy,
       struct net_device *ndev,
       u16 reason_code)
{
 int rc;
 struct wil6210_priv *wil = wiphy_to_wil(wiphy);
 struct wil6210_vif *vif = ndev_to_vif(ndev);

 wil_dbg_misc(wil, "disconnect: reason=%d, mid=%d\n",
       reason_code, vif->mid);

 if (!(test_bit(wil_vif_fwconnecting, vif->status) ||
       test_bit(wil_vif_fwconnected, vif->status))) {
  wil_err(wil, "Disconnect was called while disconnected\n");
  return 0;
 }

 vif->locally_generated_disc = 1;
 rc = wmi_call(wil, WMI_DISCONNECT_CMDID, vif->mid, ((void*)0), 0,
        WMI_DISCONNECT_EVENTID, ((void*)0), 0,
        WIL6210_DISCONNECT_TO_MS);
 if (rc)
  wil_err(wil, "disconnect error %d\n", rc);

 return rc;
}
