
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_QEEC_HIERARCY_PORT ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qeec_element_hierarchy_set (char*,int ) ;
 int mlxsw_reg_qeec_local_port_set (char*,int ) ;
 int mlxsw_reg_qeec_ptps_set (char*,int) ;
 int qeec ;

__attribute__((used)) static inline void mlxsw_reg_qeec_ptps_pack(char *payload, u8 local_port,
         bool ptps)
{
 MLXSW_REG_ZERO(qeec, payload);
 mlxsw_reg_qeec_local_port_set(payload, local_port);
 mlxsw_reg_qeec_element_hierarchy_set(payload,
          MLXSW_REG_QEEC_HIERARCY_PORT);
 mlxsw_reg_qeec_ptps_set(payload, ptps);
}
