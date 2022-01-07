
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bnx2x_mcast_config_data {int mac; } ;
struct mac_configuration_cmd {TYPE_1__* config_table; } ;
struct bnx2x_raw_obj {int cl_id; int func_id; scalar_t__ rdata; } ;
struct bnx2x_mcast_obj {struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;
typedef enum bnx2x_mcast_cmd { ____Placeholder_bnx2x_mcast_cmd } bnx2x_mcast_cmd ;
struct TYPE_2__ {int flags; int clients_bit_vector; int pf_id; scalar_t__ vlan_id; int lsb_mac_addr; int middle_mac_addr; int msb_mac_addr; } ;


 int BNX2X_MCAST_CMD_ADD ;
 int BNX2X_MCAST_CMD_RESTORE ;
 int MAC_CONFIGURATION_ENTRY_ACTION_TYPE ;
 int SET_FLAG (int ,int ,int ) ;
 int T_ETH_MAC_COMMAND_SET ;
 int bnx2x_set_fw_mac_addr (int *,int *,int *,int ) ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void bnx2x_mcast_set_one_rule_e1(struct bnx2x *bp,
     struct bnx2x_mcast_obj *o, int idx,
     union bnx2x_mcast_config_data *cfg_data,
     enum bnx2x_mcast_cmd cmd)
{
 struct bnx2x_raw_obj *r = &o->raw;
 struct mac_configuration_cmd *data =
  (struct mac_configuration_cmd *)(r->rdata);


 if ((cmd == BNX2X_MCAST_CMD_ADD) || (cmd == BNX2X_MCAST_CMD_RESTORE)) {
  bnx2x_set_fw_mac_addr(&data->config_table[idx].msb_mac_addr,
          &data->config_table[idx].middle_mac_addr,
          &data->config_table[idx].lsb_mac_addr,
          cfg_data->mac);

  data->config_table[idx].vlan_id = 0;
  data->config_table[idx].pf_id = r->func_id;
  data->config_table[idx].clients_bit_vector =
   cpu_to_le32(1 << r->cl_id);

  SET_FLAG(data->config_table[idx].flags,
    MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
    T_ETH_MAC_COMMAND_SET);
 }
}
