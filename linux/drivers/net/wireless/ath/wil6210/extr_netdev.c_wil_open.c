
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int fw_capabilities; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int WMI_FW_CAPABILITY_WMI_ONLY ;
 scalar_t__ debug_fw ;
 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_has_other_active_ifaces (struct wil6210_priv*,struct net_device*,int,int) ;
 int wil_pm_runtime_get (struct wil6210_priv*) ;
 int wil_pm_runtime_put (struct wil6210_priv*) ;
 int wil_up (struct wil6210_priv*) ;

__attribute__((used)) static int wil_open(struct net_device *ndev)
{
 struct wil6210_priv *wil = ndev_to_wil(ndev);
 int rc = 0;

 wil_dbg_misc(wil, "open\n");

 if (debug_fw ||
     test_bit(WMI_FW_CAPABILITY_WMI_ONLY, wil->fw_capabilities)) {
  wil_err(wil, "while in debug_fw or wmi_only mode\n");
  return -EINVAL;
 }

 if (!wil_has_other_active_ifaces(wil, ndev, 1, 0)) {
  wil_dbg_misc(wil, "open, first iface\n");
  rc = wil_pm_runtime_get(wil);
  if (rc < 0)
   return rc;

  rc = wil_up(wil);
  if (rc)
   wil_pm_runtime_put(wil);
 }

 return rc;
}
