
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in6_addr {int dummy; } ;


 int MLXSW_REG_MPAT_ETH_RSPAN_PROTOCOL_IPV6 ;
 int mlxsw_reg_mpat_eth_rspan_dip6_memcpy_to (char*,void*) ;
 int mlxsw_reg_mpat_eth_rspan_protocol_set (char*,int ) ;
 int mlxsw_reg_mpat_eth_rspan_sip6_memcpy_to (char*,void*) ;
 int mlxsw_reg_mpat_eth_rspan_smac_memcpy_to (char*,char const*) ;
 int mlxsw_reg_mpat_eth_rspan_ttl_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_mpat_eth_rspan_l3_ipv6_pack(char *payload, u8 ttl,
          const char *smac,
          struct in6_addr sip, struct in6_addr dip)
{
 mlxsw_reg_mpat_eth_rspan_ttl_set(payload, ttl);
 mlxsw_reg_mpat_eth_rspan_smac_memcpy_to(payload, smac);
 mlxsw_reg_mpat_eth_rspan_protocol_set(payload,
        MLXSW_REG_MPAT_ETH_RSPAN_PROTOCOL_IPV6);
 mlxsw_reg_mpat_eth_rspan_sip6_memcpy_to(payload, (void *)&sip);
 mlxsw_reg_mpat_eth_rspan_dip6_memcpy_to(payload, (void *)&dip);
}
