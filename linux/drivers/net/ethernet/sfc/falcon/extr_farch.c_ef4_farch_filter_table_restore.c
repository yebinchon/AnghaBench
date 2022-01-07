
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int filter_lock; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int step; unsigned int size; scalar_t__ offset; int * spec; int used_bitmap; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
typedef int ef4_oword_t ;


 int EF4_FARCH_FILTER_TABLE_COUNT ;
 int ef4_farch_filter_build (int *,int *) ;
 int ef4_farch_filter_push_rx_config (struct ef4_nic*) ;
 int ef4_farch_filter_push_tx_limits (struct ef4_nic*) ;
 int ef4_writeo (struct ef4_nic*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (unsigned int,int ) ;

void ef4_farch_filter_table_restore(struct ef4_nic *efx)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 enum ef4_farch_filter_table_id table_id;
 struct ef4_farch_filter_table *table;
 ef4_oword_t filter;
 unsigned int filter_idx;

 spin_lock_bh(&efx->filter_lock);

 for (table_id = 0; table_id < EF4_FARCH_FILTER_TABLE_COUNT; table_id++) {
  table = &state->table[table_id];


  if (table->step == 0)
   continue;

  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (!test_bit(filter_idx, table->used_bitmap))
    continue;
   ef4_farch_filter_build(&filter, &table->spec[filter_idx]);
   ef4_writeo(efx, &filter,
       table->offset + table->step * filter_idx);
  }
 }

 ef4_farch_filter_push_rx_config(efx);
 ef4_farch_filter_push_tx_limits(efx);

 spin_unlock_bh(&efx->filter_lock);
}
