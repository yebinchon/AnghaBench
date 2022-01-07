
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ef4_nic {int filter_lock; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int size; struct ef4_farch_filter_spec* spec; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
struct ef4_farch_filter_spec {int dummy; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;


 unsigned int EF4_FARCH_FILTER_TABLE_COUNT ;
 int ENOENT ;
 unsigned int ef4_farch_filter_id_index (int ) ;
 int ef4_farch_filter_id_table_id (int ) ;
 int ef4_farch_filter_remove (struct ef4_nic*,struct ef4_farch_filter_table*,unsigned int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ef4_farch_filter_remove_safe(struct ef4_nic *efx,
     enum ef4_filter_priority priority,
     u32 filter_id)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 enum ef4_farch_filter_table_id table_id;
 struct ef4_farch_filter_table *table;
 unsigned int filter_idx;
 struct ef4_farch_filter_spec *spec;
 int rc;

 table_id = ef4_farch_filter_id_table_id(filter_id);
 if ((unsigned int)table_id >= EF4_FARCH_FILTER_TABLE_COUNT)
  return -ENOENT;
 table = &state->table[table_id];

 filter_idx = ef4_farch_filter_id_index(filter_id);
 if (filter_idx >= table->size)
  return -ENOENT;
 spec = &table->spec[filter_idx];

 spin_lock_bh(&efx->filter_lock);
 rc = ef4_farch_filter_remove(efx, table, filter_idx, priority);
 spin_unlock_bh(&efx->filter_lock);

 return rc;
}
