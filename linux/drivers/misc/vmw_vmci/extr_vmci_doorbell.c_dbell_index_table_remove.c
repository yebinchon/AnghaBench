
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dbell_entry {int idx; int resource; int node; } ;
struct TYPE_2__ {int lock; } ;


 int dbell_index_table_find (int) ;
 int hlist_del_init (int *) ;
 int last_notify_idx_released ;
 int max_notify_idx ;
 int notify_idx_count ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 TYPE_1__ vmci_doorbell_it ;
 int vmci_resource_put (int *) ;

__attribute__((used)) static void dbell_index_table_remove(struct dbell_entry *entry)
{
 spin_lock_bh(&vmci_doorbell_it.lock);

 hlist_del_init(&entry->node);

 notify_idx_count--;
 if (entry->idx == max_notify_idx - 1) {







  while (max_notify_idx > 0 &&
         !dbell_index_table_find(max_notify_idx - 1))
   max_notify_idx--;
 }

 last_notify_idx_released = entry->idx;

 spin_unlock_bh(&vmci_doorbell_it.lock);

 vmci_resource_put(&entry->resource);
}
