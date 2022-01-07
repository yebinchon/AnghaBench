
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum mlxsw_reg_prcr_op { ____Placeholder_mlxsw_reg_prcr_op } mlxsw_reg_prcr_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_prcr_dest_offset_set (char*,int ) ;
 int mlxsw_reg_prcr_dest_tcam_region_info_memcpy_to (char*,char const*) ;
 int mlxsw_reg_prcr_offset_set (char*,int ) ;
 int mlxsw_reg_prcr_op_set (char*,int) ;
 int mlxsw_reg_prcr_size_set (char*,int ) ;
 int mlxsw_reg_prcr_tcam_region_info_memcpy_to (char*,char const*) ;
 int prcr ;

__attribute__((used)) static inline void mlxsw_reg_prcr_pack(char *payload, enum mlxsw_reg_prcr_op op,
           const char *src_tcam_region_info,
           u16 src_offset,
           const char *dest_tcam_region_info,
           u16 dest_offset, u16 size)
{
 MLXSW_REG_ZERO(prcr, payload);
 mlxsw_reg_prcr_op_set(payload, op);
 mlxsw_reg_prcr_offset_set(payload, src_offset);
 mlxsw_reg_prcr_size_set(payload, size);
 mlxsw_reg_prcr_tcam_region_info_memcpy_to(payload,
        src_tcam_region_info);
 mlxsw_reg_prcr_dest_offset_set(payload, dest_offset);
 mlxsw_reg_prcr_dest_tcam_region_info_memcpy_to(payload,
             dest_tcam_region_info);
}
