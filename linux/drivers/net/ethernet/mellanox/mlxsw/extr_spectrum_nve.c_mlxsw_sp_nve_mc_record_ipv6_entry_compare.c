
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union mlxsw_sp_l3addr {int addr6; } ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct TYPE_2__ {int addr6; } ;
struct mlxsw_sp_nve_mc_entry {TYPE_1__ ipv6_entry; } ;


 int ipv6_addr_equal (int *,int *) ;

__attribute__((used)) static bool
mlxsw_sp_nve_mc_record_ipv6_entry_compare(const struct mlxsw_sp_nve_mc_record *mc_record,
       const struct mlxsw_sp_nve_mc_entry *mc_entry,
       const union mlxsw_sp_l3addr *addr)
{
 return ipv6_addr_equal(&mc_entry->ipv6_entry.addr6, &addr->addr6);
}
