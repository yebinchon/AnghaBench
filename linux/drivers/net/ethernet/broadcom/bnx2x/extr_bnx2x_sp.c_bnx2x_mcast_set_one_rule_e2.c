
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union bnx2x_mcast_config_data {int bin; int mac; } ;
typedef int u8 ;
struct eth_multicast_rules_ramrod_data {TYPE_3__* rules; } ;
struct bnx2x_raw_obj {int func_id; scalar_t__ rdata; } ;
struct TYPE_4__ {int vec; } ;
struct TYPE_5__ {TYPE_1__ aprox_match; } ;
struct bnx2x_mcast_obj {int engine_id; TYPE_2__ registry; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;
struct TYPE_6__ {int cmd_general_data; int bin_id; int func_id; int engine_id; } ;


 int BIT_VEC64_CLEAR_BIT (int ,int) ;
 int BIT_VEC64_SET_BIT (int ,int) ;
 int BNX2X_ERR (char*,int) ;





 int BNX2X_MSG_SP ;
 int DP (int ,char*,char*,int) ;
 int ETH_MULTICAST_RULES_CMD_IS_ADD ;
 int bnx2x_mcast_bin_from_mac (int ) ;
 int bnx2x_mcast_clear_first_bin (struct bnx2x_mcast_obj*) ;
 int bnx2x_mcast_get_rx_tx_flag (struct bnx2x_mcast_obj*) ;

__attribute__((used)) static void bnx2x_mcast_set_one_rule_e2(struct bnx2x *bp,
     struct bnx2x_mcast_obj *o, int idx,
     union bnx2x_mcast_config_data *cfg_data,
     enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_raw_obj *r = &o->raw;
 struct eth_multicast_rules_ramrod_data *data =
  (struct eth_multicast_rules_ramrod_data *)(r->rdata);
 u8 func_id = r->func_id;
 u8 rx_tx_add_flag = bnx2x_mcast_get_rx_tx_flag(o);
 int bin;

 if ((cmd == 132) || (cmd == 130) ||
     (cmd == 129))
  rx_tx_add_flag |= ETH_MULTICAST_RULES_CMD_IS_ADD;

 data->rules[idx].cmd_general_data |= rx_tx_add_flag;


 switch (cmd) {
 case 132:
  bin = bnx2x_mcast_bin_from_mac(cfg_data->mac);
  BIT_VEC64_SET_BIT(o->registry.aprox_match.vec, bin);
  break;

 case 131:






  bin = bnx2x_mcast_clear_first_bin(o);
  break;

 case 130:
  bin = cfg_data->bin;
  break;

 case 129:
  bin = cfg_data->bin;
  BIT_VEC64_SET_BIT(o->registry.aprox_match.vec, bin);
  break;

 case 128:
  bin = cfg_data->bin;
  BIT_VEC64_CLEAR_BIT(o->registry.aprox_match.vec, bin);
  break;

 default:
  BNX2X_ERR("Unknown command: %d\n", cmd);
  return;
 }

 DP(BNX2X_MSG_SP, "%s bin %d\n",
    ((rx_tx_add_flag & ETH_MULTICAST_RULES_CMD_IS_ADD) ?
    "Setting" : "Clearing"), bin);

 data->rules[idx].bin_id = (u8)bin;
 data->rules[idx].func_id = func_id;
 data->rules[idx].engine_id = o->engine_id;
}
