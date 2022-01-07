
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u8 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_11n_delba {int peer_mac_addr; int del_ba_param_set; } ;


 int DELBA_TID_POS ;
 int INITIATOR_BIT (int) ;
 int TYPE_DELBA_RECEIVE ;
 int le16_to_cpu (int ) ;
 int mwifiex_del_ba_tbl (struct mwifiex_private*,int,int ,int ,int ) ;

void mwifiex_11n_delete_ba_stream(struct mwifiex_private *priv, u8 *del_ba)
{
 struct host_cmd_ds_11n_delba *cmd_del_ba =
  (struct host_cmd_ds_11n_delba *) del_ba;
 uint16_t del_ba_param_set = le16_to_cpu(cmd_del_ba->del_ba_param_set);
 int tid;

 tid = del_ba_param_set >> DELBA_TID_POS;

 mwifiex_del_ba_tbl(priv, tid, cmd_del_ba->peer_mac_addr,
      TYPE_DELBA_RECEIVE, INITIATOR_BIT(del_ba_param_set));
}
