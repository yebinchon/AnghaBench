
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int mlxsw_reg_rauhtd_ipv4_ent_dip_get (char*,int) ;
 int mlxsw_reg_rauhtd_ipv4_ent_rif_get (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_rauhtd_ent_ipv4_unpack(char *payload,
          int ent_index, u16 *p_rif,
          u32 *p_dip)
{
 *p_rif = mlxsw_reg_rauhtd_ipv4_ent_rif_get(payload, ent_index);
 *p_dip = mlxsw_reg_rauhtd_ipv4_ent_dip_get(payload, ent_index);
}
