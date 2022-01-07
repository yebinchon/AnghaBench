
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {struct efx_farch_filter_state* filter_state; } ;
struct efx_farch_filter_table {unsigned int size; struct efx_farch_filter_spec* spec; } ;
struct efx_farch_filter_state {int lock; struct efx_farch_filter_table* table; } ;
struct efx_farch_filter_spec {int dummy; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
typedef enum efx_farch_filter_table_id { ____Placeholder_efx_farch_filter_table_id } efx_farch_filter_table_id ;


 unsigned int EFX_FARCH_FILTER_TABLE_COUNT ;
 int ENOENT ;
 int down_write (int *) ;
 unsigned int efx_farch_filter_id_index (int ) ;
 int efx_farch_filter_id_table_id (int ) ;
 int efx_farch_filter_remove (struct efx_nic*,struct efx_farch_filter_table*,unsigned int,int) ;
 int up_write (int *) ;

int efx_farch_filter_remove_safe(struct efx_nic *efx,
     enum efx_filter_priority priority,
     u32 filter_id)
{
 struct efx_farch_filter_state *state = efx->filter_state;
 enum efx_farch_filter_table_id table_id;
 struct efx_farch_filter_table *table;
 unsigned int filter_idx;
 struct efx_farch_filter_spec *spec;
 int rc;

 table_id = efx_farch_filter_id_table_id(filter_id);
 if ((unsigned int)table_id >= EFX_FARCH_FILTER_TABLE_COUNT)
  return -ENOENT;
 table = &state->table[table_id];

 filter_idx = efx_farch_filter_id_index(filter_id);
 if (filter_idx >= table->size)
  return -ENOENT;
 down_write(&state->lock);
 spec = &table->spec[filter_idx];

 rc = efx_farch_filter_remove(efx, table, filter_idx, priority);
 up_write(&state->lock);

 return rc;
}
