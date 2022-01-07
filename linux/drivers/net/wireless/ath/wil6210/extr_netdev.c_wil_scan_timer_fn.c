
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int status; } ;
struct timer_list {int dummy; } ;


 int clear_bit (int ,int ) ;
 struct wil6210_vif* from_timer (int ,struct timer_list*,int ) ;
 int scan_timer ;
 struct wil6210_vif* vif ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_fw_error_recovery (struct wil6210_priv*) ;
 int wil_status_fwready ;

__attribute__((used)) static void wil_scan_timer_fn(struct timer_list *t)
{
 struct wil6210_vif *vif = from_timer(vif, t, scan_timer);
 struct wil6210_priv *wil = vif_to_wil(vif);

 clear_bit(wil_status_fwready, wil->status);
 wil_err(wil, "Scan timeout detected, start fw error recovery\n");
 wil_fw_error_recovery(wil);
}
