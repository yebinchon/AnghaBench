
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_ptar_op { ____Placeholder_mlxsw_reg_ptar_op } mlxsw_reg_ptar_op ;
typedef enum mlxsw_reg_ptar_key_type { ____Placeholder_mlxsw_reg_ptar_key_type } mlxsw_reg_ptar_key_type ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ptar_action_set_type_set (char*,int) ;
 int mlxsw_reg_ptar_key_type_set (char*,int) ;
 int mlxsw_reg_ptar_op_set (char*,int) ;
 int mlxsw_reg_ptar_region_id_set (char*,int ) ;
 int mlxsw_reg_ptar_region_size_set (char*,int ) ;
 int mlxsw_reg_ptar_tcam_region_info_memcpy_to (char*,char const*) ;
 int ptar ;

__attribute__((used)) static inline void mlxsw_reg_ptar_pack(char *payload, enum mlxsw_reg_ptar_op op,
           enum mlxsw_reg_ptar_key_type key_type,
           u16 region_size, u16 region_id,
           const char *tcam_region_info)
{
 MLXSW_REG_ZERO(ptar, payload);
 mlxsw_reg_ptar_op_set(payload, op);
 mlxsw_reg_ptar_action_set_type_set(payload, 2);
 mlxsw_reg_ptar_key_type_set(payload, key_type);
 mlxsw_reg_ptar_region_size_set(payload, region_size);
 mlxsw_reg_ptar_region_id_set(payload, region_id);
 mlxsw_reg_ptar_tcam_region_info_memcpy_to(payload, tcam_region_info);
}
