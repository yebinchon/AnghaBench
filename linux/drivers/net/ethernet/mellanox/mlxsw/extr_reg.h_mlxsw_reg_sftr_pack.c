
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlxsw_flood_table_type { ____Placeholder_mlxsw_flood_table_type } mlxsw_flood_table_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_sftr_flood_table_set (char*,unsigned int) ;
 int mlxsw_reg_sftr_index_set (char*,unsigned int) ;
 int mlxsw_reg_sftr_port_mask_set (char*,int ,int) ;
 int mlxsw_reg_sftr_port_set (char*,int ,int) ;
 int mlxsw_reg_sftr_range_set (char*,unsigned int) ;
 int mlxsw_reg_sftr_swid_set (char*,int ) ;
 int mlxsw_reg_sftr_table_type_set (char*,int) ;
 int sftr ;

__attribute__((used)) static inline void mlxsw_reg_sftr_pack(char *payload,
           unsigned int flood_table,
           unsigned int index,
           enum mlxsw_flood_table_type table_type,
           unsigned int range, u8 port, bool set)
{
 MLXSW_REG_ZERO(sftr, payload);
 mlxsw_reg_sftr_swid_set(payload, 0);
 mlxsw_reg_sftr_flood_table_set(payload, flood_table);
 mlxsw_reg_sftr_index_set(payload, index);
 mlxsw_reg_sftr_table_type_set(payload, table_type);
 mlxsw_reg_sftr_range_set(payload, range);
 mlxsw_reg_sftr_port_set(payload, port, set);
 mlxsw_reg_sftr_port_mask_set(payload, port, 1);
}
