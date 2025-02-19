
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int status; } ;


 scalar_t__ test_bit (int ,int ) ;
 int wil_dbg_pm (struct wil6210_priv*,char*,...) ;
 int wil_status_suspended ;
 int wil_suspend_keep_radio_on (struct wil6210_priv*) ;
 int wil_suspend_radio_off (struct wil6210_priv*) ;

int wil_suspend(struct wil6210_priv *wil, bool is_runtime, bool keep_radio_on)
{
 int rc = 0;

 wil_dbg_pm(wil, "suspend: %s\n", is_runtime ? "runtime" : "system");

 if (test_bit(wil_status_suspended, wil->status)) {
  wil_dbg_pm(wil, "trying to suspend while suspended\n");
  return 0;
 }

 if (!keep_radio_on)
  rc = wil_suspend_radio_off(wil);
 else
  rc = wil_suspend_keep_radio_on(wil);

 wil_dbg_pm(wil, "suspend: %s => %d\n",
     is_runtime ? "runtime" : "system", rc);

 return rc;
}
