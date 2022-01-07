
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mlxsw_sp_l3addr {scalar_t__ addr4; } ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_entry {scalar_t__ addr4; } ;



__attribute__((used)) static bool
mlxsw_sp_nve_mc_record_ipv4_entry_compare(const struct mlxsw_sp_nve_mc_record *mc_record,
       const struct mlxsw_sp_nve_mc_entry *mc_entry,
       const union mlxsw_sp_l3addr *addr)
{
 return mc_entry->addr4 == addr->addr4;
}
