
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {int traffic_class; } ;


 int ATH6KL_DBG_WMI ;
 int WMI_DISCONNECT_CMDID ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_wmi_simple_cmd (struct wmi*,int ,int ) ;

int ath6kl_wmi_disconnect_cmd(struct wmi *wmi, u8 if_idx)
{
 int ret;

 ath6kl_dbg(ATH6KL_DBG_WMI, "wmi disconnect\n");

 wmi->traffic_class = 100;


 ret = ath6kl_wmi_simple_cmd(wmi, if_idx, WMI_DISCONNECT_CMDID);

 return ret;
}
