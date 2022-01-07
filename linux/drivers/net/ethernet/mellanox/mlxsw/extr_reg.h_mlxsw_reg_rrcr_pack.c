
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_rtar_key_type { ____Placeholder_mlxsw_reg_rtar_key_type } mlxsw_reg_rtar_key_type ;
typedef enum mlxsw_reg_rrcr_op { ____Placeholder_mlxsw_reg_rrcr_op } mlxsw_reg_rrcr_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rrcr_dest_offset_set (char*,int ) ;
 int mlxsw_reg_rrcr_offset_set (char*,int ) ;
 int mlxsw_reg_rrcr_op_set (char*,int) ;
 int mlxsw_reg_rrcr_size_set (char*,int ) ;
 int mlxsw_reg_rrcr_table_id_set (char*,int) ;
 int rrcr ;

__attribute__((used)) static inline void mlxsw_reg_rrcr_pack(char *payload, enum mlxsw_reg_rrcr_op op,
           u16 offset, u16 size,
           enum mlxsw_reg_rtar_key_type table_id,
           u16 dest_offset)
{
 MLXSW_REG_ZERO(rrcr, payload);
 mlxsw_reg_rrcr_op_set(payload, op);
 mlxsw_reg_rrcr_offset_set(payload, offset);
 mlxsw_reg_rrcr_size_set(payload, size);
 mlxsw_reg_rrcr_table_id_set(payload, table_id);
 mlxsw_reg_rrcr_dest_offset_set(payload, dest_offset);
}
