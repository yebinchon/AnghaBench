
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct wmi_rcp_delba_cmd {int cidxtid; scalar_t__ tid; scalar_t__ cid; int reason; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int CIDXTID_EXTENDED_CID_TID ;
 scalar_t__ WIL6210_RX_DESC_MAX_CID ;
 int WMI_RCP_DELBA_CMDID ;
 int cpu_to_le16 (int ) ;
 int mk_cidxtid (scalar_t__,scalar_t__) ;
 int wil_dbg_wmi (struct wil6210_priv*,char*,scalar_t__,scalar_t__,int ) ;
 int wmi_send (struct wil6210_priv*,int ,scalar_t__,struct wmi_rcp_delba_cmd*,int) ;

int wmi_delba_rx(struct wil6210_priv *wil, u8 mid, u8 cid, u8 tid, u16 reason)
{
 struct wmi_rcp_delba_cmd cmd = {
  .reason = cpu_to_le16(reason),
 };

 if (cid >= WIL6210_RX_DESC_MAX_CID) {
  cmd.cidxtid = CIDXTID_EXTENDED_CID_TID;
  cmd.cid = cid;
  cmd.tid = tid;
 } else {
  cmd.cidxtid = mk_cidxtid(cid, tid);
 }

 wil_dbg_wmi(wil, "delba_rx: (CID %d TID %d reason %d)\n", cid,
      tid, reason);

 return wmi_send(wil, WMI_RCP_DELBA_CMDID, mid, &cmd, sizeof(cmd));
}
