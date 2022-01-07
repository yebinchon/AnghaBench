
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_RATR_IPIP_TYPE_IPV4 ;
 int mlxsw_reg_ratr_ipip_ipv4_udip_set (char*,int ) ;
 int mlxsw_reg_ratr_ipip_type_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_ratr_ipip4_entry_pack(char *payload, u32 ipv4_udip)
{
 mlxsw_reg_ratr_ipip_type_set(payload, MLXSW_REG_RATR_IPIP_TYPE_IPV4);
 mlxsw_reg_ratr_ipip_ipv4_udip_set(payload, ipv4_udip);
}
