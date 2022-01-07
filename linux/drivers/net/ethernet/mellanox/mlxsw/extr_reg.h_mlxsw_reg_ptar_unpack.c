
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlxsw_reg_ptar_tcam_region_info_memcpy_from (char*,char*) ;

__attribute__((used)) static inline void mlxsw_reg_ptar_unpack(char *payload, char *tcam_region_info)
{
 mlxsw_reg_ptar_tcam_region_info_memcpy_from(payload, tcam_region_info);
}
