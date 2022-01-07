
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_set_pcp_channel_cmd {int channel; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int main_ndev; } ;
typedef int cmd ;


 int WMI_SET_PCP_CHANNEL_CMDID ;
 struct wil6210_vif* ndev_to_vif (int ) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_set_pcp_channel_cmd*,int) ;

int wmi_set_channel(struct wil6210_priv *wil, int channel)
{
 struct wil6210_vif *vif = ndev_to_vif(wil->main_ndev);
 struct wmi_set_pcp_channel_cmd cmd = {
  .channel = channel - 1,
 };

 return wmi_send(wil, WMI_SET_PCP_CHANNEL_CMDID, vif->mid,
   &cmd, sizeof(cmd));
}
