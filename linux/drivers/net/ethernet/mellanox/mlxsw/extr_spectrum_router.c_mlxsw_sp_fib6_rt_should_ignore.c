
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct fib6_info {int fib6_flags; TYPE_1__ fib6_dst; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 int RTF_CACHE ;
 int ipv6_addr_type (int *) ;

__attribute__((used)) static bool mlxsw_sp_fib6_rt_should_ignore(const struct fib6_info *rt)
{




 if (ipv6_addr_type(&rt->fib6_dst.addr) & IPV6_ADDR_LINKLOCAL)
  return 1;




 if (ipv6_addr_type(&rt->fib6_dst.addr) & IPV6_ADDR_MULTICAST)
  return 1;


 if (rt->fib6_flags & RTF_CACHE)
  return 1;

 return 0;
}
