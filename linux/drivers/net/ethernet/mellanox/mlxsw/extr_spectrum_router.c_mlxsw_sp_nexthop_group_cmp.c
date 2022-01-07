
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable_compare_arg {struct mlxsw_sp_nexthop_group_cmp_arg* key; } ;
struct mlxsw_sp_nexthop_group_cmp_arg {int proto; int fib6_entry; int fi; } ;
struct mlxsw_sp_nexthop_group {int dummy; } ;




 int WARN_ON (int) ;
 int mlxsw_sp_nexthop4_group_fi (struct mlxsw_sp_nexthop_group const*) ;
 int mlxsw_sp_nexthop6_group_cmp (struct mlxsw_sp_nexthop_group const*,int ) ;

__attribute__((used)) static int
mlxsw_sp_nexthop_group_cmp(struct rhashtable_compare_arg *arg, const void *ptr)
{
 const struct mlxsw_sp_nexthop_group_cmp_arg *cmp_arg = arg->key;
 const struct mlxsw_sp_nexthop_group *nh_grp = ptr;

 switch (cmp_arg->proto) {
 case 129:
  return cmp_arg->fi != mlxsw_sp_nexthop4_group_fi(nh_grp);
 case 128:
  return !mlxsw_sp_nexthop6_group_cmp(nh_grp,
          cmp_arg->fib6_entry);
 default:
  WARN_ON(1);
  return 1;
 }
}
