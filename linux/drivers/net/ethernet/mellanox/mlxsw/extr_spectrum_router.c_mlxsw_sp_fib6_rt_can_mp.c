
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fib6_info {int fib6_flags; TYPE_1__* fib6_nh; } ;
struct TYPE_2__ {scalar_t__ fib_nh_gw_family; } ;


 int RTF_ADDRCONF ;

__attribute__((used)) static bool mlxsw_sp_fib6_rt_can_mp(const struct fib6_info *rt)
{

 return !(rt->fib6_flags & RTF_ADDRCONF) &&
  rt->fib6_nh->fib_nh_gw_family;
}
