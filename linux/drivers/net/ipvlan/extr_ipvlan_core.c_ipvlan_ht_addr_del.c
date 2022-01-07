
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipvl_addr {int hlnode; } ;


 int hlist_del_init_rcu (int *) ;

void ipvlan_ht_addr_del(struct ipvl_addr *addr)
{
 hlist_del_init_rcu(&addr->hlnode);
}
