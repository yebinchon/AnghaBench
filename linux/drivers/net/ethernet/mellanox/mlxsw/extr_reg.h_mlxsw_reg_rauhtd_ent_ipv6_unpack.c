
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_rauhtd_ipv6_ent_dip_memcpy_from (char*,int,char*) ;
 int mlxsw_reg_rauhtd_ipv6_ent_rif_get (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_rauhtd_ent_ipv6_unpack(char *payload,
          int rec_index, u16 *p_rif,
          char *p_dip)
{
 *p_rif = mlxsw_reg_rauhtd_ipv6_ent_rif_get(payload, rec_index);
 mlxsw_reg_rauhtd_ipv6_ent_dip_memcpy_from(payload, rec_index, p_dip);
}
