
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mlxsw_sp_l3addr {int addr4; } ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;


 int EINVAL ;

 int WARN_ON (int) ;
 int cpu_to_be32 (int ) ;

int mlxsw_sp_nve_learned_ip_resolve(struct mlxsw_sp *mlxsw_sp, u32 uip,
        enum mlxsw_sp_l3proto proto,
        union mlxsw_sp_l3addr *addr)
{
 switch (proto) {
 case 128:
  addr->addr4 = cpu_to_be32(uip);
  return 0;
 default:
  WARN_ON(1);
  return -EINVAL;
 }
}
