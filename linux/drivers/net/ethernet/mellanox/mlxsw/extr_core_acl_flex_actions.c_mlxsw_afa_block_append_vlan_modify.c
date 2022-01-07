
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (char*) ;
 int MLXSW_AFA_VLAN_CMD_SET_OUTER ;
 int MLXSW_AFA_VLAN_CODE ;
 int MLXSW_AFA_VLAN_SIZE ;
 int MLXSW_AFA_VLAN_VLAN_TAG_CMD_NOP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (char*) ;
 char* mlxsw_afa_block_append_action (struct mlxsw_afa_block*,int ,int ) ;
 int mlxsw_afa_vlan_pack (char*,int ,int ,int ,int ,int ,int ,int ) ;

int mlxsw_afa_block_append_vlan_modify(struct mlxsw_afa_block *block,
           u16 vid, u8 pcp, u8 et,
           struct netlink_ext_ack *extack)
{
 char *act = mlxsw_afa_block_append_action(block,
        MLXSW_AFA_VLAN_CODE,
        MLXSW_AFA_VLAN_SIZE);

 if (IS_ERR(act)) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot append vlan_modify action");
  return PTR_ERR(act);
 }
 mlxsw_afa_vlan_pack(act, MLXSW_AFA_VLAN_VLAN_TAG_CMD_NOP,
       MLXSW_AFA_VLAN_CMD_SET_OUTER, vid,
       MLXSW_AFA_VLAN_CMD_SET_OUTER, pcp,
       MLXSW_AFA_VLAN_CMD_SET_OUTER, et);
 return 0;
}
