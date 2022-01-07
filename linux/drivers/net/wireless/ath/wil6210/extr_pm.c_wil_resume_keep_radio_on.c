
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int status; int bus_request_kbps_pre_suspend; } ;


 int BIT_USER_CLKS_RST_PWGD ;
 int RGF_USER_CLKS_CTL_0 ;
 int clear_bit (int ,int ) ;
 scalar_t__ no_fw_recovery ;
 int set_bit (int ,int ) ;
 int wil6210_bus_request (struct wil6210_priv*,int ) ;
 int wil_c (struct wil6210_priv*,int ,int ) ;
 int wil_down (struct wil6210_priv*) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wil_pm_wake_connected_net_queues (struct wil6210_priv*) ;
 int wil_status_resuming ;
 int wil_status_suspended ;
 int wil_unmask_irq (struct wil6210_priv*) ;
 int wil_up (struct wil6210_priv*) ;
 int wmi_resume (struct wil6210_priv*) ;

__attribute__((used)) static int wil_resume_keep_radio_on(struct wil6210_priv *wil)
{
 int rc = 0;




 set_bit(wil_status_resuming, wil->status);
 clear_bit(wil_status_suspended, wil->status);
 wil_c(wil, RGF_USER_CLKS_CTL_0, BIT_USER_CLKS_RST_PWGD);
 wil_unmask_irq(wil);

 wil6210_bus_request(wil, wil->bus_request_kbps_pre_suspend);


 rc = wmi_resume(wil);
 if (rc) {
  wil_err(wil, "device failed to resume (%d)\n", rc);
  if (no_fw_recovery)
   goto out;
  rc = wil_down(wil);
  if (rc) {
   wil_err(wil, "wil_down failed (%d)\n", rc);
   goto out;
  }
  rc = wil_up(wil);
  if (rc) {
   wil_err(wil, "wil_up failed (%d)\n", rc);
   goto out;
  }
 }


 wil_pm_wake_connected_net_queues(wil);

out:
 if (rc)
  set_bit(wil_status_suspended, wil->status);
 return rc;
}
