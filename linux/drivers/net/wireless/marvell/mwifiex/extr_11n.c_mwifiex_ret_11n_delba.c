
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct mwifiex_tx_ba_stream_tbl {int tid; int ra; } ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_11n_delba {scalar_t__ del_result; int peer_mac_addr; int del_ba_param_set; } ;
struct TYPE_2__ {struct host_cmd_ds_11n_delba del_ba; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 scalar_t__ BA_RESULT_SUCCESS ;
 int BA_SETUP_INPROGRESS ;
 int DELBA_TID_POS ;
 int INITIATOR_BIT (int) ;
 int TYPE_DELBA_SENT ;
 int le16_to_cpu (int ) ;
 int mwifiex_create_ba_tbl (struct mwifiex_private*,int ,int,int ) ;
 int mwifiex_del_ba_tbl (struct mwifiex_private*,int,int ,int ,int) ;
 struct mwifiex_tx_ba_stream_tbl* mwifiex_get_ba_status (struct mwifiex_private*,int ) ;
 int mwifiex_send_addba (struct mwifiex_private*,int,int ) ;

int mwifiex_ret_11n_delba(struct mwifiex_private *priv,
     struct host_cmd_ds_command *resp)
{
 int tid;
 struct mwifiex_tx_ba_stream_tbl *tx_ba_tbl;
 struct host_cmd_ds_11n_delba *del_ba = &resp->params.del_ba;
 uint16_t del_ba_param_set = le16_to_cpu(del_ba->del_ba_param_set);

 tid = del_ba_param_set >> DELBA_TID_POS;
 if (del_ba->del_result == BA_RESULT_SUCCESS) {
  mwifiex_del_ba_tbl(priv, tid, del_ba->peer_mac_addr,
       TYPE_DELBA_SENT,
       INITIATOR_BIT(del_ba_param_set));

  tx_ba_tbl = mwifiex_get_ba_status(priv, BA_SETUP_INPROGRESS);
  if (tx_ba_tbl)
   mwifiex_send_addba(priv, tx_ba_tbl->tid,
        tx_ba_tbl->ra);
 } else {



  if (!INITIATOR_BIT(del_ba_param_set))
   return 0;

  mwifiex_create_ba_tbl(priv, del_ba->peer_mac_addr, tid,
          BA_SETUP_INPROGRESS);

  tx_ba_tbl = mwifiex_get_ba_status(priv, BA_SETUP_INPROGRESS);

  if (tx_ba_tbl)
   mwifiex_del_ba_tbl(priv, tx_ba_tbl->tid, tx_ba_tbl->ra,
        TYPE_DELBA_SENT, 1);
 }

 return 0;
}
