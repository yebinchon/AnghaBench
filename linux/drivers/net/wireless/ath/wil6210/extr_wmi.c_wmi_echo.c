
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_echo_cmd {int value; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int main_ndev; } ;
typedef int cmd ;


 int WIL_WMI_CALL_GENERAL_TO_MS ;
 int WMI_ECHO_CMDID ;
 int WMI_ECHO_RSP_EVENTID ;
 int cpu_to_le32 (int) ;
 struct wil6210_vif* ndev_to_vif (int ) ;
 int wmi_call (struct wil6210_priv*,int ,int ,struct wmi_echo_cmd*,int,int ,int *,int ,int ) ;

int wmi_echo(struct wil6210_priv *wil)
{
 struct wil6210_vif *vif = ndev_to_vif(wil->main_ndev);
 struct wmi_echo_cmd cmd = {
  .value = cpu_to_le32(0x12345678),
 };

 return wmi_call(wil, WMI_ECHO_CMDID, vif->mid, &cmd, sizeof(cmd),
   WMI_ECHO_RSP_EVENTID, ((void*)0), 0,
   WIL_WMI_CALL_GENERAL_TO_MS);
}
