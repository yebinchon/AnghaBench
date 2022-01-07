
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi {int dummy; } ;


 int WMI_GET_TX_PWR_CMDID ;
 int ath6kl_wmi_simple_cmd (struct wmi*,int ,int ) ;

int ath6kl_wmi_get_tx_pwr_cmd(struct wmi *wmi, u8 if_idx)
{
 return ath6kl_wmi_simple_cmd(wmi, if_idx, WMI_GET_TX_PWR_CMDID);
}
