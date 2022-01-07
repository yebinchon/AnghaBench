
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macvlan_source_entry {int hlist; } ;


 int hlist_del_rcu (int *) ;
 int kfree_rcu (struct macvlan_source_entry*,int ) ;
 int rcu ;

__attribute__((used)) static void macvlan_hash_del_source(struct macvlan_source_entry *entry)
{
 hlist_del_rcu(&entry->hlist);
 kfree_rcu(entry, rcu);
}
