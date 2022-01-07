
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_state {TYPE_1__* table; } ;
typedef enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;
struct TYPE_2__ {int spec; struct efx_farch_filter_state* used_bitmap; } ;


 int EFX_FARCH_FILTER_TABLE_COUNT ;
 int kfree (struct efx_farch_filter_state*) ;
 int vfree (int ) ;

void efx_farch_filter_table_remove(struct efx_nic *efx)
{
 struct efx_farch_filter_state *state = efx->filter_state;
 enum efx_farch_filter_table_id table_id;

 for (table_id = 0; table_id < EFX_FARCH_FILTER_TABLE_COUNT; table_id++) {
  kfree(state->table[table_id].used_bitmap);
  vfree(state->table[table_id].spec);
 }
 kfree(state);
}
