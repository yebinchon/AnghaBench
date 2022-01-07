
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_set_ssid_cmd {int ssid; int ssid_len; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int WMI_SET_SSID_CMDID ;
 int cpu_to_le32 (int) ;
 int memcpy (int ,void const*,int) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_set_ssid_cmd*,int) ;

int wmi_set_ssid(struct wil6210_vif *vif, u8 ssid_len, const void *ssid)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wmi_set_ssid_cmd cmd = {
  .ssid_len = cpu_to_le32(ssid_len),
 };

 if (ssid_len > sizeof(cmd.ssid))
  return -EINVAL;

 memcpy(cmd.ssid, ssid, ssid_len);

 return wmi_send(wil, WMI_SET_SSID_CMDID, vif->mid, &cmd, sizeof(cmd));
}
