
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {struct wmi* last_mgmt_tx_frame; } ;


 int kfree (struct wmi*) ;

void ath6kl_wmi_shutdown(struct wmi *wmi)
{
 if (!wmi)
  return;

 kfree(wmi->last_mgmt_tx_frame);
 kfree(wmi);
}
