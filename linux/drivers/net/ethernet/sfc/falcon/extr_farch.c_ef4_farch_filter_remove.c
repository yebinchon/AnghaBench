
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
struct ef4_farch_filter_table {int used_bitmap; struct ef4_farch_filter_spec* spec; } ;
struct ef4_farch_filter_spec {int priority; int flags; } ;
typedef enum ef4_filter_priority { ____Placeholder_ef4_filter_priority } ef4_filter_priority ;


 int EF4_FILTER_FLAG_RX_OVER_AUTO ;
 int ENOENT ;
 int ef4_farch_filter_init_rx_auto (struct ef4_nic*,struct ef4_farch_filter_spec*) ;
 int ef4_farch_filter_push_rx_config (struct ef4_nic*) ;
 int ef4_farch_filter_table_clear_entry (struct ef4_nic*,struct ef4_farch_filter_table*,unsigned int) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static int ef4_farch_filter_remove(struct ef4_nic *efx,
       struct ef4_farch_filter_table *table,
       unsigned int filter_idx,
       enum ef4_filter_priority priority)
{
 struct ef4_farch_filter_spec *spec = &table->spec[filter_idx];

 if (!test_bit(filter_idx, table->used_bitmap) ||
     spec->priority != priority)
  return -ENOENT;

 if (spec->flags & EF4_FILTER_FLAG_RX_OVER_AUTO) {
  ef4_farch_filter_init_rx_auto(efx, spec);
  ef4_farch_filter_push_rx_config(efx);
 } else {
  ef4_farch_filter_table_clear_entry(efx, table, filter_idx);
 }

 return 0;
}
