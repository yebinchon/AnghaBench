
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_set_mac_address_cmd {int mac; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int main_ndev; } ;
typedef int cmd ;


 int WMI_SET_MAC_ADDRESS_CMDID ;
 int ether_addr_copy (int ,void*) ;
 struct wil6210_vif* ndev_to_vif (int ) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,void*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_set_mac_address_cmd*,int) ;

int wmi_set_mac_address(struct wil6210_priv *wil, void *addr)
{
 struct wil6210_vif *vif = ndev_to_vif(wil->main_ndev);
 struct wmi_set_mac_address_cmd cmd;

 ether_addr_copy(cmd.mac, addr);

 wil_dbg_wmi(wil, "Set MAC %pM\n", addr);

 return wmi_send(wil, WMI_SET_MAC_ADDRESS_CMDID, vif->mid,
   &cmd, sizeof(cmd));
}
