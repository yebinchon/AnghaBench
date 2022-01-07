
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_ring_ba_dis_cmd {int reason; int ring_id; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int WMI_RING_BA_DIS_CMDID ;
 int cpu_to_le16 (int ) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,int ,int ) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_ring_ba_dis_cmd*,int) ;

int wmi_delba_tx(struct wil6210_priv *wil, u8 mid, u8 ringid, u16 reason)
{
 struct wmi_ring_ba_dis_cmd cmd = {
  .ring_id = ringid,
  .reason = cpu_to_le16(reason),
 };

 wil_dbg_wmi(wil, "delba_tx: (ring %d reason %d)\n", ringid, reason);

 return wmi_send(wil, WMI_RING_BA_DIS_CMDID, mid, &cmd, sizeof(cmd));
}
