
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_rgcr_ipv4_en_set (char*,int) ;
 int mlxsw_reg_rgcr_ipv6_en_set (char*,int) ;
 int rgcr ;

__attribute__((used)) static inline void mlxsw_reg_rgcr_pack(char *payload, bool ipv4_en,
           bool ipv6_en)
{
 MLXSW_REG_ZERO(rgcr, payload);
 mlxsw_reg_rgcr_ipv4_en_set(payload, ipv4_en);
 mlxsw_reg_rgcr_ipv6_en_set(payload, ipv6_en);
}
