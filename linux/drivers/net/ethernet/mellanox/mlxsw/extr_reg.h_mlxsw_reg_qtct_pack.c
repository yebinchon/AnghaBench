
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qtct_local_port_set (char*,int ) ;
 int mlxsw_reg_qtct_switch_prio_set (char*,int ) ;
 int mlxsw_reg_qtct_tclass_set (char*,int ) ;
 int qtct ;

__attribute__((used)) static inline void mlxsw_reg_qtct_pack(char *payload, u8 local_port,
           u8 switch_prio, u8 tclass)
{
 MLXSW_REG_ZERO(qtct, payload);
 mlxsw_reg_qtct_local_port_set(payload, local_port);
 mlxsw_reg_qtct_switch_prio_set(payload, switch_prio);
 mlxsw_reg_qtct_tclass_set(payload, tclass);
}
