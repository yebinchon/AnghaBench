
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlb_client_info {scalar_t__ vlan_id; int * slave; scalar_t__ assigned; void* used_prev; void* used_next; } ;


 void* RLB_NULL_INDEX ;

__attribute__((used)) static void rlb_init_table_entry_dst(struct rlb_client_info *entry)
{
 entry->used_next = RLB_NULL_INDEX;
 entry->used_prev = RLB_NULL_INDEX;
 entry->assigned = 0;
 entry->slave = ((void*)0);
 entry->vlan_id = 0;
}
