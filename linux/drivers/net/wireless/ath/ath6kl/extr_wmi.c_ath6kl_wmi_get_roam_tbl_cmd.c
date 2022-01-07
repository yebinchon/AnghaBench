
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi {int dummy; } ;


 int WMI_GET_ROAM_TBL_CMDID ;
 int ath6kl_wmi_simple_cmd (struct wmi*,int ,int ) ;

int ath6kl_wmi_get_roam_tbl_cmd(struct wmi *wmi)
{
 return ath6kl_wmi_simple_cmd(wmi, 0, WMI_GET_ROAM_TBL_CMDID);
}
