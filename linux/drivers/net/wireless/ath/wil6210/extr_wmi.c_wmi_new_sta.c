
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_new_sta_cmd {int dst_mac; int aid; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int WMI_NEW_STA_CMDID ;
 int ether_addr_copy (int ,int const*) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int const*,int ) ;
 int wil_err (struct wil6210_priv*,char*,int) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_new_sta_cmd*,int) ;

int wmi_new_sta(struct wil6210_vif *vif, const u8 *mac, u8 aid)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 int rc;
 struct wmi_new_sta_cmd cmd = {
  .aid = aid,
 };

 wil_dbg_wmi(wil, "new sta %pM, aid %d\n", mac, aid);

 ether_addr_copy(cmd.dst_mac, mac);

 rc = wmi_send(wil, WMI_NEW_STA_CMDID, vif->mid, &cmd, sizeof(cmd));
 if (rc)
  wil_err(wil, "Failed to send new sta (%d)\n", rc);

 return rc;
}
