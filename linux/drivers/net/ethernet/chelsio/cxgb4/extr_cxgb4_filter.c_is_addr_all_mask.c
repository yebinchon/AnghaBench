
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in_addr {int s_addr; } ;
struct in6_addr {int* s6_addr32; } ;


 int AF_INET ;
 int AF_INET6 ;

__attribute__((used)) static bool is_addr_all_mask(u8 *ipmask, int family)
{
 if (family == AF_INET) {
  struct in_addr *addr;

  addr = (struct in_addr *)ipmask;
  if (addr->s_addr == 0xffffffff)
   return 1;
 } else if (family == AF_INET6) {
  struct in6_addr *addr6;

  addr6 = (struct in6_addr *)ipmask;
  if (addr6->s6_addr32[0] == 0xffffffff &&
      addr6->s6_addr32[1] == 0xffffffff &&
      addr6->s6_addr32[2] == 0xffffffff &&
      addr6->s6_addr32[3] == 0xffffffff)
   return 1;
 }
 return 0;
}
