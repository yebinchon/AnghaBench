
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int filter_lock; struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_table {unsigned int size; TYPE_1__* spec; } ;
struct ef4_farch_filter_state {struct ef4_farch_filter_table* table; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
struct TYPE_2__ {scalar_t__ priority; } ;


 scalar_t__ EF4_FILTER_PRI_AUTO ;
 int ef4_farch_filter_remove (struct ef4_nic*,struct ef4_farch_filter_table*,unsigned int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ef4_farch_filter_table_clear(struct ef4_nic *efx,
        enum ef4_farch_filter_table_id table_id,
        enum ef4_filter_priority priority)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 struct ef4_farch_filter_table *table = &state->table[table_id];
 unsigned int filter_idx;

 spin_lock_bh(&efx->filter_lock);
 for (filter_idx = 0; filter_idx < table->size; ++filter_idx) {
  if (table->spec[filter_idx].priority != EF4_FILTER_PRI_AUTO)
   ef4_farch_filter_remove(efx, table,
      filter_idx, priority);
 }
 spin_unlock_bh(&efx->filter_lock);
}
