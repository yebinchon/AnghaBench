
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef unsigned int u32 ;
struct mlxsw_sp_nexthop_group {unsigned int count; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {unsigned int ifindex; } ;
struct fib_info {int dummy; } ;
typedef int fi ;




 int WARN_ON (int) ;
 unsigned int jhash (unsigned int*,int,unsigned int) ;
 struct fib_info* mlxsw_sp_nexthop4_group_fi (struct mlxsw_sp_nexthop_group const*) ;
 int mlxsw_sp_nexthop_group_type (struct mlxsw_sp_nexthop_group const*) ;

__attribute__((used)) static u32 mlxsw_sp_nexthop_group_hash_obj(const void *data, u32 len, u32 seed)
{
 const struct mlxsw_sp_nexthop_group *nh_grp = data;
 const struct mlxsw_sp_nexthop *nh;
 struct fib_info *fi;
 unsigned int val;
 int i;

 switch (mlxsw_sp_nexthop_group_type(nh_grp)) {
 case 129:
  fi = mlxsw_sp_nexthop4_group_fi(nh_grp);
  return jhash(&fi, sizeof(fi), seed);
 case 128:
  val = nh_grp->count;
  for (i = 0; i < nh_grp->count; i++) {
   nh = &nh_grp->nexthops[i];
   val ^= jhash(&nh->ifindex, sizeof(nh->ifindex), seed);
  }
  return jhash(&val, sizeof(val), seed);
 default:
  WARN_ON(1);
  return 0;
 }
}
