
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ef4_nic {int filter_lock; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int size; TYPE_1__* spec; int used_bitmap; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
struct TYPE_2__ {int priority; } ;


 int EF4_FARCH_FILTER_TABLE_RX_DEF ;
 int EF4_FARCH_FILTER_TABLE_RX_IP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ test_bit (unsigned int,int ) ;

u32 ef4_farch_filter_count_rx_used(struct ef4_nic *efx,
       enum ef4_filter_priority priority)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 enum ef4_farch_filter_table_id table_id;
 struct ef4_farch_filter_table *table;
 unsigned int filter_idx;
 u32 count = 0;

 spin_lock_bh(&efx->filter_lock);

 for (table_id = EF4_FARCH_FILTER_TABLE_RX_IP;
      table_id <= EF4_FARCH_FILTER_TABLE_RX_DEF;
      table_id++) {
  table = &state->table[table_id];
  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (test_bit(filter_idx, table->used_bitmap) &&
       table->spec[filter_idx].priority == priority)
    ++count;
  }
 }

 spin_unlock_bh(&efx->filter_lock);

 return count;
}
