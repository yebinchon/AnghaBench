
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvlan_source_entry {int hlist; struct macvlan_dev* vlan; int addr; } ;
struct macvlan_port {struct hlist_head* vlan_source_hash; } ;
struct macvlan_dev {int macaddr_count; struct macvlan_port* port; } ;
struct hlist_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 struct macvlan_source_entry* kmalloc (int,int ) ;
 size_t macvlan_eth_hash (unsigned char const*) ;
 struct macvlan_source_entry* macvlan_hash_lookup_source (struct macvlan_dev*,unsigned char const*) ;

__attribute__((used)) static int macvlan_hash_add_source(struct macvlan_dev *vlan,
       const unsigned char *addr)
{
 struct macvlan_port *port = vlan->port;
 struct macvlan_source_entry *entry;
 struct hlist_head *h;

 entry = macvlan_hash_lookup_source(vlan, addr);
 if (entry)
  return 0;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 ether_addr_copy(entry->addr, addr);
 entry->vlan = vlan;
 h = &port->vlan_source_hash[macvlan_eth_hash(addr)];
 hlist_add_head_rcu(&entry->hlist, h);
 vlan->macaddr_count++;

 return 0;
}
