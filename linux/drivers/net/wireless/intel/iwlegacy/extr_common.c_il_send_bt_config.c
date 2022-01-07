
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;
struct il_bt_cmd {scalar_t__ flags; int kill_cts_mask; int kill_ack_mask; int max_kill; int lead_time; } ;


 scalar_t__ BT_COEX_DISABLE ;
 scalar_t__ BT_COEX_ENABLE ;
 int BT_LEAD_TIME_DEF ;
 int BT_MAX_KILL_DEF ;
 int C_BT_CONFIG ;
 int D_INFO (char*,char*) ;
 int IL_ERR (char*) ;
 int bt_coex_active ;
 scalar_t__ il_send_cmd_pdu (struct il_priv*,int ,int,struct il_bt_cmd*) ;

void
il_send_bt_config(struct il_priv *il)
{
 struct il_bt_cmd bt_cmd = {
  .lead_time = BT_LEAD_TIME_DEF,
  .max_kill = BT_MAX_KILL_DEF,
  .kill_ack_mask = 0,
  .kill_cts_mask = 0,
 };

 if (!bt_coex_active)
  bt_cmd.flags = BT_COEX_DISABLE;
 else
  bt_cmd.flags = BT_COEX_ENABLE;

 D_INFO("BT coex %s\n",
        (bt_cmd.flags == BT_COEX_DISABLE) ? "disable" : "active");

 if (il_send_cmd_pdu(il, C_BT_CONFIG, sizeof(struct il_bt_cmd), &bt_cmd))
  IL_ERR("failed to send BT Coex Config\n");
}
