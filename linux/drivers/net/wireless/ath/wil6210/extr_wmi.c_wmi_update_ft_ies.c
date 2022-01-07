
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_update_ft_ies_cmd {int ie_info; int ie_len; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WMI_UPDATE_FT_IES_CMDID ;
 int cpu_to_le16 (int) ;
 int kfree (struct wmi_update_ft_ies_cmd*) ;
 struct wmi_update_ft_ies_cmd* kzalloc (int,int ) ;
 int memcpy (int ,void const*,int) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_update_ft_ies_cmd*,int) ;

int wmi_update_ft_ies(struct wil6210_vif *vif, u16 ie_len, const void *ie)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 u16 len;
 struct wmi_update_ft_ies_cmd *cmd;
 int rc;

 if (!ie)
  ie_len = 0;

 len = sizeof(struct wmi_update_ft_ies_cmd) + ie_len;
 if (len < ie_len) {
  wil_err(wil, "wraparound. ie len %d\n", ie_len);
  return -EINVAL;
 }

 cmd = kzalloc(len, GFP_KERNEL);
 if (!cmd) {
  rc = -ENOMEM;
  goto out;
 }

 cmd->ie_len = cpu_to_le16(ie_len);
 memcpy(cmd->ie_info, ie, ie_len);
 rc = wmi_send(wil, WMI_UPDATE_FT_IES_CMDID, vif->mid, cmd, len);
 kfree(cmd);

out:
 if (rc)
  wil_err(wil, "update ft ies failed : %d\n", rc);

 return rc;
}
