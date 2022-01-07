
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlb_client_info {void* src_next; void* src_prev; void* src_first; } ;


 void* RLB_NULL_INDEX ;

__attribute__((used)) static void rlb_init_table_entry_src(struct rlb_client_info *entry)
{
 entry->src_first = RLB_NULL_INDEX;
 entry->src_prev = RLB_NULL_INDEX;
 entry->src_next = RLB_NULL_INDEX;
}
