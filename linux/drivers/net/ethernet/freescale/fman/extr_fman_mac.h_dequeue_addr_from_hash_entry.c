
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;
struct eth_hash_entry {int node; } ;


 struct eth_hash_entry* ETH_HASH_ENTRY_OBJ (int ) ;
 int list_del_init (int *) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static inline struct eth_hash_entry
*dequeue_addr_from_hash_entry(struct list_head *addr_lst)
{
 struct eth_hash_entry *hash_entry = ((void*)0);

 if (!list_empty(addr_lst)) {
  hash_entry = ETH_HASH_ENTRY_OBJ(addr_lst->next);
  list_del_init(&hash_entry->node);
 }
 return hash_entry;
}
