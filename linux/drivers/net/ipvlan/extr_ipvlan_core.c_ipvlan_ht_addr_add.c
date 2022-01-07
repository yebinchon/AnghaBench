
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ipvl_port {int * hlhead; } ;
struct ipvl_dev {struct ipvl_port* port; } ;
struct ipvl_addr {scalar_t__ atype; int hlnode; int ip4addr; int ip6addr; } ;


 scalar_t__ IPVL_IPV6 ;
 int hlist_add_head_rcu (int *,int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 size_t ipvlan_get_v4_hash (int *) ;
 size_t ipvlan_get_v6_hash (int *) ;

void ipvlan_ht_addr_add(struct ipvl_dev *ipvlan, struct ipvl_addr *addr)
{
 struct ipvl_port *port = ipvlan->port;
 u8 hash;

 hash = (addr->atype == IPVL_IPV6) ?
        ipvlan_get_v6_hash(&addr->ip6addr) :
        ipvlan_get_v4_hash(&addr->ip4addr);
 if (hlist_unhashed(&addr->hlnode))
  hlist_add_head_rcu(&addr->hlnode, &port->hlhead[hash]);
}
