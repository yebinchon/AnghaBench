
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlxsw_reg_mpat_eth_rspan_version { ____Placeholder_mlxsw_reg_mpat_eth_rspan_version } mlxsw_reg_mpat_eth_rspan_version ;


 int mlxsw_reg_mpat_eth_rspan_mac_memcpy_to (char*,char const*) ;
 int mlxsw_reg_mpat_eth_rspan_tp_set (char*,int) ;
 int mlxsw_reg_mpat_eth_rspan_version_set (char*,int) ;

__attribute__((used)) static inline void
mlxsw_reg_mpat_eth_rspan_l2_pack(char *payload,
     enum mlxsw_reg_mpat_eth_rspan_version version,
     const char *mac,
     bool tp)
{
 mlxsw_reg_mpat_eth_rspan_version_set(payload, version);
 mlxsw_reg_mpat_eth_rspan_mac_memcpy_to(payload, mac);
 mlxsw_reg_mpat_eth_rspan_tp_set(payload, tp);
}
