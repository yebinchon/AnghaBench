
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_port_admin_status { ____Placeholder_mlxsw_port_admin_status } mlxsw_port_admin_status ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_paos_admin_status_set (char*,int) ;
 int mlxsw_reg_paos_ase_set (char*,int) ;
 int mlxsw_reg_paos_e_set (char*,int) ;
 int mlxsw_reg_paos_ee_set (char*,int) ;
 int mlxsw_reg_paos_local_port_set (char*,int ) ;
 int mlxsw_reg_paos_oper_status_set (char*,int ) ;
 int mlxsw_reg_paos_swid_set (char*,int ) ;
 int paos ;

__attribute__((used)) static inline void mlxsw_reg_paos_pack(char *payload, u8 local_port,
           enum mlxsw_port_admin_status status)
{
 MLXSW_REG_ZERO(paos, payload);
 mlxsw_reg_paos_swid_set(payload, 0);
 mlxsw_reg_paos_local_port_set(payload, local_port);
 mlxsw_reg_paos_admin_status_set(payload, status);
 mlxsw_reg_paos_oper_status_set(payload, 0);
 mlxsw_reg_paos_ase_set(payload, 1);
 mlxsw_reg_paos_ee_set(payload, 1);
 mlxsw_reg_paos_e_set(payload, 1);
}
