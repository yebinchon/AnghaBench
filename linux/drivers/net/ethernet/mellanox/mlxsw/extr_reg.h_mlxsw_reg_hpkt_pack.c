
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef enum mlxsw_reg_htgt_trap_group { ____Placeholder_mlxsw_reg_htgt_trap_group } mlxsw_reg_htgt_trap_group ;


 int MLXSW_REG_HPKT_ACK_NOT_REQUIRED ;
 int MLXSW_REG_HPKT_CTRL_PACKET_NO_BUFFER ;
 int MLXSW_REG_HPKT_CTRL_PACKET_USE_BUFFER ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int hpkt ;
 int mlxsw_reg_hpkt_ack_set (char*,int ) ;
 int mlxsw_reg_hpkt_action_set (char*,int ) ;
 int mlxsw_reg_hpkt_ctrl_set (char*,int ) ;
 int mlxsw_reg_hpkt_trap_group_set (char*,int) ;
 int mlxsw_reg_hpkt_trap_id_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_hpkt_pack(char *payload, u8 action, u16 trap_id,
           enum mlxsw_reg_htgt_trap_group trap_group,
           bool is_ctrl)
{
 MLXSW_REG_ZERO(hpkt, payload);
 mlxsw_reg_hpkt_ack_set(payload, MLXSW_REG_HPKT_ACK_NOT_REQUIRED);
 mlxsw_reg_hpkt_action_set(payload, action);
 mlxsw_reg_hpkt_trap_group_set(payload, trap_group);
 mlxsw_reg_hpkt_trap_id_set(payload, trap_id);
 mlxsw_reg_hpkt_ctrl_set(payload, is_ctrl ?
    MLXSW_REG_HPKT_CTRL_PACKET_USE_BUFFER :
    MLXSW_REG_HPKT_CTRL_PACKET_NO_BUFFER);
}
