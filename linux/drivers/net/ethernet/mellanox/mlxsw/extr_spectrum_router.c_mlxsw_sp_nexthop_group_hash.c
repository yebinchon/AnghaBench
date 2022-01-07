
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_nexthop_group_cmp_arg {int proto; int fib6_entry; int fi; } ;




 int WARN_ON (int) ;
 int jhash (int *,int,int ) ;
 int mlxsw_sp_nexthop6_group_hash (int ,int ) ;

__attribute__((used)) static u32
mlxsw_sp_nexthop_group_hash(const void *data, u32 len, u32 seed)
{
 const struct mlxsw_sp_nexthop_group_cmp_arg *cmp_arg = data;

 switch (cmp_arg->proto) {
 case 129:
  return jhash(&cmp_arg->fi, sizeof(cmp_arg->fi), seed);
 case 128:
  return mlxsw_sp_nexthop6_group_hash(cmp_arg->fib6_entry, seed);
 default:
  WARN_ON(1);
  return 0;
 }
}
