
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_client_info {int load_history; int tx_bytes; void* prev; void* next; int * tx_slave; } ;


 int BOND_TLB_REBALANCE_INTERVAL ;
 void* TLB_NULL_INDEX ;

__attribute__((used)) static inline void tlb_init_table_entry(struct tlb_client_info *entry, int save_load)
{
 if (save_load) {
  entry->load_history = 1 + entry->tx_bytes /
          BOND_TLB_REBALANCE_INTERVAL;
  entry->tx_bytes = 0;
 }

 entry->tx_slave = ((void*)0);
 entry->next = TLB_NULL_INDEX;
 entry->prev = TLB_NULL_INDEX;
}
