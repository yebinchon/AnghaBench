
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_11n_delba {int reason_code; int del_ba_param_set; int peer_mac_addr; } ;
struct host_cmd_ds_11n_batimeout {scalar_t__ origninator; scalar_t__ tid; int peer_mac_addr; } ;


 int DELBA_INITIATOR_POS ;
 int DELBA_TID_POS ;
 int ETH_ALEN ;
 int HostCmd_CMD_11N_DELBA ;
 int WLAN_REASON_QSTA_TIMEOUT ;
 int cpu_to_le16 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct host_cmd_ds_11n_delba*,int ,int) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct host_cmd_ds_11n_delba*,int) ;

void mwifiex_11n_ba_stream_timeout(struct mwifiex_private *priv,
       struct host_cmd_ds_11n_batimeout *event)
{
 struct host_cmd_ds_11n_delba delba;

 memset(&delba, 0, sizeof(struct host_cmd_ds_11n_delba));
 memcpy(delba.peer_mac_addr, event->peer_mac_addr, ETH_ALEN);

 delba.del_ba_param_set |=
  cpu_to_le16((u16) event->tid << DELBA_TID_POS);
 delba.del_ba_param_set |= cpu_to_le16(
  (u16) event->origninator << DELBA_INITIATOR_POS);
 delba.reason_code = cpu_to_le16(WLAN_REASON_QSTA_TIMEOUT);
 mwifiex_send_cmd(priv, HostCmd_CMD_11N_DELBA, 0, 0, &delba, 0);
}
