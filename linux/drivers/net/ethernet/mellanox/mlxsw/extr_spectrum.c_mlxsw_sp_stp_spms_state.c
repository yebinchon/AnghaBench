
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_spms_state { ____Placeholder_mlxsw_reg_spms_state } mlxsw_reg_spms_state ;







 int BUG () ;
 int MLXSW_REG_SPMS_STATE_DISCARDING ;
 int MLXSW_REG_SPMS_STATE_FORWARDING ;
 int MLXSW_REG_SPMS_STATE_LEARNING ;

enum mlxsw_reg_spms_state mlxsw_sp_stp_spms_state(u8 state)
{
 switch (state) {
 case 130:
  return MLXSW_REG_SPMS_STATE_FORWARDING;
 case 129:
  return MLXSW_REG_SPMS_STATE_LEARNING;
 case 128:
 case 131:
 case 132:
  return MLXSW_REG_SPMS_STATE_DISCARDING;
 default:
  BUG();
 }
}
