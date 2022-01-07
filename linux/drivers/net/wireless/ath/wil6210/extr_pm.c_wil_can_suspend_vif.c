
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; } ;
struct wil6210_vif {int status; } ;
struct wil6210_priv {int dummy; } ;





 int test_bit (int ,int ) ;
 struct wireless_dev* vif_to_wdev (struct wil6210_vif*) ;
 int wil_dbg_pm (struct wil6210_priv*,char*) ;
 int wil_vif_fwconnecting ;

__attribute__((used)) static bool
wil_can_suspend_vif(struct wil6210_priv *wil, struct wil6210_vif *vif,
      bool is_runtime)
{
 struct wireless_dev *wdev = vif_to_wdev(vif);

 switch (wdev->iftype) {
 case 130:
  wil_dbg_pm(wil, "Sniffer\n");
  return 0;


 case 128:
 case 129:
  if (test_bit(wil_vif_fwconnecting, vif->status)) {
   wil_dbg_pm(wil, "Delay suspend when connecting\n");
   return 0;
  }
  if (is_runtime) {
   wil_dbg_pm(wil, "STA-like interface\n");
   return 0;
  }
  break;

 default:
  wil_dbg_pm(wil, "AP-like interface\n");
  return 0;
 }

 return 1;
}
