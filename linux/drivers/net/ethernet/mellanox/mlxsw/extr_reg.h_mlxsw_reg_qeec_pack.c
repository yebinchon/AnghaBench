
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_reg_qeec_hr { ____Placeholder_mlxsw_reg_qeec_hr } mlxsw_reg_qeec_hr ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_qeec_element_hierarchy_set (char*,int) ;
 int mlxsw_reg_qeec_element_index_set (char*,int ) ;
 int mlxsw_reg_qeec_local_port_set (char*,int ) ;
 int mlxsw_reg_qeec_next_element_index_set (char*,int ) ;
 int qeec ;

__attribute__((used)) static inline void mlxsw_reg_qeec_pack(char *payload, u8 local_port,
           enum mlxsw_reg_qeec_hr hr, u8 index,
           u8 next_index)
{
 MLXSW_REG_ZERO(qeec, payload);
 mlxsw_reg_qeec_local_port_set(payload, local_port);
 mlxsw_reg_qeec_element_hierarchy_set(payload, hr);
 mlxsw_reg_qeec_element_index_set(payload, index);
 mlxsw_reg_qeec_next_element_index_set(payload, next_index);
}
