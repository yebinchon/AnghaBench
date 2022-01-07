
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int primary_key; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {TYPE_1__ key; } ;
struct in6_addr {int dummy; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int ipv6_addr_type (struct in6_addr*) ;

bool mlxsw_sp_neigh_ipv6_ignore(struct mlxsw_sp_neigh_entry *neigh_entry)
{
 struct neighbour *n = neigh_entry->key.n;





 if (ipv6_addr_type((struct in6_addr *) &n->primary_key) &
     IPV6_ADDR_LINKLOCAL)
  return 1;
 return 0;
}
