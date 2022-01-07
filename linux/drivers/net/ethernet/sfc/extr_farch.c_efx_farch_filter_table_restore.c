
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int step; unsigned int size; scalar_t__ offset; int * spec; int used_bitmap; } ;
struct efx_farch_filter_state {int lock; struct efx_farch_filter_table* table; } ;
typedef enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;
typedef int efx_oword_t ;


 int EFX_FARCH_FILTER_TABLE_COUNT ;
 int down_write (int *) ;
 int efx_farch_filter_build (int *,int *) ;
 int efx_farch_filter_push_rx_config (struct efx_nic*) ;
 int efx_farch_filter_push_tx_limits (struct efx_nic*) ;
 int efx_writeo (struct efx_nic*,int *,scalar_t__) ;
 int test_bit (unsigned int,int ) ;
 int up_write (int *) ;

void efx_farch_filter_table_restore(struct efx_nic *efx)
{
 struct efx_farch_filter_state *state = efx->filter_state;
 enum efx_farch_filter_table_id table_id;
 struct efx_farch_filter_table *table;
 efx_oword_t filter;
 unsigned int filter_idx;

 down_write(&state->lock);

 for (table_id = 0; table_id < EFX_FARCH_FILTER_TABLE_COUNT; table_id++) {
  table = &state->table[table_id];


  if (table->step == 0)
   continue;

  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (!test_bit(filter_idx, table->used_bitmap))
    continue;
   efx_farch_filter_build(&filter, &table->spec[filter_idx]);
   efx_writeo(efx, &filter,
       table->offset + table->step * filter_idx);
  }
 }

 efx_farch_filter_push_rx_config(efx);
 efx_farch_filter_push_tx_limits(efx);

 up_write(&state->lock);
}
