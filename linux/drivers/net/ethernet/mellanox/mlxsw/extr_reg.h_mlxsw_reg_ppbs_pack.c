
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ppbs_pbs_ptr_set (char*,int ) ;
 int mlxsw_reg_ppbs_system_port_set (char*,int ) ;
 int ppbs ;

__attribute__((used)) static inline void mlxsw_reg_ppbs_pack(char *payload, u32 pbs_ptr,
           u16 system_port)
{
 MLXSW_REG_ZERO(ppbs, payload);
 mlxsw_reg_ppbs_pbs_ptr_set(payload, pbs_ptr);
 mlxsw_reg_ppbs_system_port_set(payload, system_port);
}
