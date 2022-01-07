
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct wmi_set_appie_cmd {size_t mgmt_frm_type; int ie_info; int ie_len; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;


 size_t ARRAY_SIZE (char const* const*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;





 int WMI_SET_APPIE_CMDID ;
 int cpu_to_le16 (scalar_t__) ;
 int kfree (struct wmi_set_appie_cmd*) ;
 struct wmi_set_appie_cmd* kzalloc (scalar_t__,int ) ;
 int memcpy (int ,void const*,scalar_t__) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_err (struct wil6210_priv*,char*,size_t,char const*,int) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_set_appie_cmd*,scalar_t__) ;

int wmi_set_ie(struct wil6210_vif *vif, u8 type, u16 ie_len, const void *ie)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 static const char *const names[] = {
  [130] = "BEACON",
  [129] = "PROBE_REQ",
  [128] = "WMI_FRAME_PROBE_RESP",
  [132] = "WMI_FRAME_ASSOC_REQ",
  [131] = "WMI_FRAME_ASSOC_RESP",
 };
 int rc;
 u16 len = sizeof(struct wmi_set_appie_cmd) + ie_len;
 struct wmi_set_appie_cmd *cmd;

 if (len < ie_len) {
  rc = -EINVAL;
  goto out;
 }

 cmd = kzalloc(len, GFP_KERNEL);
 if (!cmd) {
  rc = -ENOMEM;
  goto out;
 }
 if (!ie)
  ie_len = 0;

 cmd->mgmt_frm_type = type;

 cmd->ie_len = cpu_to_le16(ie_len);
 memcpy(cmd->ie_info, ie, ie_len);
 rc = wmi_send(wil, WMI_SET_APPIE_CMDID, vif->mid, cmd, len);
 kfree(cmd);
out:
 if (rc) {
  const char *name = type < ARRAY_SIZE(names) ?
       names[type] : "??";
  wil_err(wil, "set_ie(%d %s) failed : %d\n", type, name, rc);
 }

 return rc;
}
