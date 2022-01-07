
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct macvlan_port {int * vlan_hash; } ;
struct macvlan_dev {int hlist; TYPE_1__* dev; struct macvlan_port* port; } ;
struct TYPE_2__ {unsigned char* dev_addr; } ;


 int hlist_add_head_rcu (int *,int *) ;
 size_t macvlan_eth_hash (unsigned char const*) ;

__attribute__((used)) static void macvlan_hash_add(struct macvlan_dev *vlan)
{
 struct macvlan_port *port = vlan->port;
 const unsigned char *addr = vlan->dev->dev_addr;
 u32 idx = macvlan_eth_hash(addr);

 hlist_add_head_rcu(&vlan->hlist, &port->vlan_hash[idx]);
}
