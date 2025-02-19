
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct ef4_nic {struct ef4_farch_filter_state* filter_state; } ;
struct ef4_farch_filter_state {TYPE_1__* table; } ;
typedef enum ef4_farch_filter_table_id { ____Placeholder_ef4_farch_filter_table_id } ef4_farch_filter_table_id ;
struct TYPE_2__ {unsigned int size; } ;


 unsigned int EF4_FARCH_FILTER_INDEX_WIDTH ;
 int EF4_FARCH_FILTER_MATCH_PRI_COUNT ;
 int* ef4_farch_filter_range_table ;

u32 ef4_farch_filter_get_rx_id_limit(struct ef4_nic *efx)
{
 struct ef4_farch_filter_state *state = efx->filter_state;
 unsigned int range = EF4_FARCH_FILTER_MATCH_PRI_COUNT - 1;
 enum ef4_farch_filter_table_id table_id;

 do {
  table_id = ef4_farch_filter_range_table[range];
  if (state->table[table_id].size != 0)
   return range << EF4_FARCH_FILTER_INDEX_WIDTH |
    state->table[table_id].size;
 } while (range--);

 return 0;
}
