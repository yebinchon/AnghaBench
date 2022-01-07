
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_ptce2_op { ____Placeholder_mlxsw_reg_ptce2_op } mlxsw_reg_ptce2_op ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ptce2_offset_set (char*,int ) ;
 int mlxsw_reg_ptce2_op_set (char*,int) ;
 int mlxsw_reg_ptce2_priority_set (char*,int ) ;
 int mlxsw_reg_ptce2_tcam_region_info_memcpy_to (char*,char const*) ;
 int mlxsw_reg_ptce2_v_set (char*,int) ;
 int ptce2 ;

__attribute__((used)) static inline void mlxsw_reg_ptce2_pack(char *payload, bool valid,
     enum mlxsw_reg_ptce2_op op,
     const char *tcam_region_info,
     u16 offset, u32 priority)
{
 MLXSW_REG_ZERO(ptce2, payload);
 mlxsw_reg_ptce2_v_set(payload, valid);
 mlxsw_reg_ptce2_op_set(payload, op);
 mlxsw_reg_ptce2_offset_set(payload, offset);
 mlxsw_reg_ptce2_priority_set(payload, priority);
 mlxsw_reg_ptce2_tcam_region_info_memcpy_to(payload, tcam_region_info);
}
