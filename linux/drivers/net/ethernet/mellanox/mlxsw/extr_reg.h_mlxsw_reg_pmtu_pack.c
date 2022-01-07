
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pmtu_admin_mtu_set (char*,int ) ;
 int mlxsw_reg_pmtu_local_port_set (char*,int ) ;
 int mlxsw_reg_pmtu_max_mtu_set (char*,int ) ;
 int mlxsw_reg_pmtu_oper_mtu_set (char*,int ) ;
 int pmtu ;

__attribute__((used)) static inline void mlxsw_reg_pmtu_pack(char *payload, u8 local_port,
           u16 new_mtu)
{
 MLXSW_REG_ZERO(pmtu, payload);
 mlxsw_reg_pmtu_local_port_set(payload, local_port);
 mlxsw_reg_pmtu_max_mtu_set(payload, 0);
 mlxsw_reg_pmtu_admin_mtu_set(payload, new_mtu);
 mlxsw_reg_pmtu_oper_mtu_set(payload, 0);
}
