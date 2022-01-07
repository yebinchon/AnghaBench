
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_MCQI_CAP_LEN ;
 int MLXSW_REG_MCQI_INFO_TYPE_CAPABILITIES ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mcqi ;
 int mlxsw_reg_mcqi_component_index_set (char*,int ) ;
 int mlxsw_reg_mcqi_data_size_set (char*,int ) ;
 int mlxsw_reg_mcqi_info_type_set (char*,int ) ;
 int mlxsw_reg_mcqi_offset_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mcqi_pack(char *payload, u16 component_index)
{
 MLXSW_REG_ZERO(mcqi, payload);
 mlxsw_reg_mcqi_component_index_set(payload, component_index);
 mlxsw_reg_mcqi_info_type_set(payload,
         MLXSW_REG_MCQI_INFO_TYPE_CAPABILITIES);
 mlxsw_reg_mcqi_offset_set(payload, 0);
 mlxsw_reg_mcqi_data_size_set(payload, MLXSW_REG_MCQI_CAP_LEN);
}
