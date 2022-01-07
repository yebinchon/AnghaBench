
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_entry {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int
mlxsw_sp_nve_mc_record_ipv6_entry_add(struct mlxsw_sp_nve_mc_record *mc_record,
          struct mlxsw_sp_nve_mc_entry *mc_entry,
          const union mlxsw_sp_l3addr *addr)
{
 WARN_ON(1);

 return -EINVAL;
}
