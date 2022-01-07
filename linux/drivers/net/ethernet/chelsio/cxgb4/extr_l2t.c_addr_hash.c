
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2t_data {int dummy; } ;


 unsigned int arp_hash (struct l2t_data*,int const*,int) ;
 unsigned int ipv6_hash (struct l2t_data*,int const*,int) ;

__attribute__((used)) static unsigned int addr_hash(struct l2t_data *d, const u32 *addr,
         int addr_len, int ifindex)
{
 return addr_len == 4 ? arp_hash(d, addr, ifindex) :
          ipv6_hash(d, addr, ifindex);
}
