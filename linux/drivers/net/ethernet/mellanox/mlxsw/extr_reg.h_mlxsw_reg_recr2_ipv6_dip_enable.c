
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_RECR2_IPV6_DIP0_7 ;
 int MLXSW_REG_RECR2_IPV6_DIP15 ;
 int MLXSW_REG_RECR2_IPV6_DIP8 ;
 int mlxsw_reg_recr2_outer_header_fields_enable_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_recr2_ipv6_dip_enable(char *payload)
{
 int i = MLXSW_REG_RECR2_IPV6_DIP0_7;

 mlxsw_reg_recr2_outer_header_fields_enable_set(payload, i, 1);

 i = MLXSW_REG_RECR2_IPV6_DIP8;
 for (; i <= MLXSW_REG_RECR2_IPV6_DIP15; i++)
  mlxsw_reg_recr2_outer_header_fields_enable_set(payload, i,
              1);
}
