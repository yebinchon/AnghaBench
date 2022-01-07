
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_RECR2_IPV4_DIP0 ;
 int MLXSW_REG_RECR2_IPV4_DIP3 ;
 int mlxsw_reg_recr2_outer_header_fields_enable_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_recr2_ipv4_dip_enable(char *payload)
{
 int i;

 for (i = MLXSW_REG_RECR2_IPV4_DIP0; i <= MLXSW_REG_RECR2_IPV4_DIP3; i++)
  mlxsw_reg_recr2_outer_header_fields_enable_set(payload, i,
              1);
}
