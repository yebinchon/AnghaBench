
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pacl_acl_id_set (char*,int ) ;
 int mlxsw_reg_pacl_tcam_region_info_memcpy_to (char*,char const*) ;
 int mlxsw_reg_pacl_v_set (char*,int) ;
 int pacl ;

__attribute__((used)) static inline void mlxsw_reg_pacl_pack(char *payload, u16 acl_id,
           bool valid, const char *tcam_region_info)
{
 MLXSW_REG_ZERO(pacl, payload);
 mlxsw_reg_pacl_acl_id_set(payload, acl_id);
 mlxsw_reg_pacl_v_set(payload, valid);
 mlxsw_reg_pacl_tcam_region_info_memcpy_to(payload, tcam_region_info);
}
