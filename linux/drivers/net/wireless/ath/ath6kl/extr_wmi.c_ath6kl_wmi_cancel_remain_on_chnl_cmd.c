
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {int dummy; } ;


 int ATH6KL_DBG_WMI ;
 int WMI_CANCEL_REMAIN_ON_CHNL_CMDID ;
 int ath6kl_dbg (int ,char*) ;
 int ath6kl_wmi_simple_cmd (struct wmi*,int ,int ) ;

int ath6kl_wmi_cancel_remain_on_chnl_cmd(struct wmi *wmi, u8 if_idx)
{
 ath6kl_dbg(ATH6KL_DBG_WMI, "cancel_remain_on_chnl_cmd\n");
 return ath6kl_wmi_simple_cmd(wmi, if_idx,
         WMI_CANCEL_REMAIN_ON_CHNL_CMDID);
}
