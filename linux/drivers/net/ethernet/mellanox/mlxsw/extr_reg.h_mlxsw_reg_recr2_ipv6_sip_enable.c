
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_RECR2_IPV6_SIP0_7 ;
 int MLXSW_REG_RECR2_IPV6_SIP15 ;
 int MLXSW_REG_RECR2_IPV6_SIP8 ;
 int mlxsw_reg_recr2_outer_header_fields_enable_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_recr2_ipv6_sip_enable(char *payload)
{
 int i = MLXSW_REG_RECR2_IPV6_SIP0_7;

 mlxsw_reg_recr2_outer_header_fields_enable_set(payload, i, 1);

 i = MLXSW_REG_RECR2_IPV6_SIP8;
 for (; i <= MLXSW_REG_RECR2_IPV6_SIP15; i++)
  mlxsw_reg_recr2_outer_header_fields_enable_set(payload, i,
              1);
}
