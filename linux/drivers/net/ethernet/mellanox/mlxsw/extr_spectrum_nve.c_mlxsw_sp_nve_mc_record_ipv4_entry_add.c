
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mlxsw_sp_l3addr {int addr4; } ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_entry {int addr4; } ;



__attribute__((used)) static int
mlxsw_sp_nve_mc_record_ipv4_entry_add(struct mlxsw_sp_nve_mc_record *mc_record,
          struct mlxsw_sp_nve_mc_entry *mc_entry,
          const union mlxsw_sp_l3addr *addr)
{
 mc_entry->addr4 = addr->addr4;

 return 0;
}
