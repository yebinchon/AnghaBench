
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {scalar_t__ n_rx_channels; int filter_lock; scalar_t__ rx_scatter; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int size; unsigned int step; scalar_t__ offset; TYPE_1__* spec; int used_bitmap; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
typedef int ef4_oword_t ;
struct TYPE_2__ {scalar_t__ dmaq_id; int flags; } ;


 int EF4_FARCH_FILTER_TABLE_RX_DEF ;
 int EF4_FARCH_FILTER_TABLE_RX_IP ;
 int EF4_FILTER_FLAG_RX_SCATTER ;
 int ef4_farch_filter_build (int *,TYPE_1__*) ;
 int ef4_farch_filter_push_rx_config (struct ef4_nic*) ;
 int ef4_writeo (struct ef4_nic*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (unsigned int,int ) ;

void ef4_farch_filter_update_rx_scatter(struct ef4_nic *efx)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 enum ef4_farch_filter_table_id table_id;
 struct ef4_farch_filter_table *table;
 ef4_oword_t filter;
 unsigned int filter_idx;

 spin_lock_bh(&efx->filter_lock);

 for (table_id = EF4_FARCH_FILTER_TABLE_RX_IP;
      table_id <= EF4_FARCH_FILTER_TABLE_RX_DEF;
      table_id++) {
  table = &state->table[table_id];

  for (filter_idx = 0; filter_idx < table->size; filter_idx++) {
   if (!test_bit(filter_idx, table->used_bitmap) ||
       table->spec[filter_idx].dmaq_id >=
       efx->n_rx_channels)
    continue;

   if (efx->rx_scatter)
    table->spec[filter_idx].flags |=
     EF4_FILTER_FLAG_RX_SCATTER;
   else
    table->spec[filter_idx].flags &=
     ~EF4_FILTER_FLAG_RX_SCATTER;

   if (table_id == EF4_FARCH_FILTER_TABLE_RX_DEF)

    continue;

   ef4_farch_filter_build(&filter, &table->spec[filter_idx]);
   ef4_writeo(efx, &filter,
       table->offset + table->step * filter_idx);
  }
 }

 ef4_farch_filter_push_rx_config(efx);

 spin_unlock_bh(&efx->filter_lock);
}
