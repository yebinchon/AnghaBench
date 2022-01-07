
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;


 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 int wil_dbg_misc (struct wil6210_priv*,char*) ;
 int wil_down (struct wil6210_priv*) ;
 int wil_has_other_active_ifaces (struct wil6210_priv*,struct net_device*,int,int) ;
 int wil_pm_runtime_put (struct wil6210_priv*) ;

__attribute__((used)) static int wil_stop(struct net_device *ndev)
{
 struct wil6210_priv *wil = ndev_to_wil(ndev);
 int rc = 0;

 wil_dbg_misc(wil, "stop\n");

 if (!wil_has_other_active_ifaces(wil, ndev, 1, 0)) {
  wil_dbg_misc(wil, "stop, last iface\n");
  rc = wil_down(wil);
  if (!rc)
   wil_pm_runtime_put(wil);
 }

 return rc;
}
