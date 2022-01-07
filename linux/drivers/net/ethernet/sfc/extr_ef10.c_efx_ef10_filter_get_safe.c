
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_filter_spec {int priority; } ;
struct efx_ef10_filter_table {int lock; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 int ENOENT ;
 int down_read (int *) ;
 struct efx_filter_spec* efx_ef10_filter_entry_spec (struct efx_ef10_filter_table*,unsigned int) ;
 unsigned int efx_ef10_filter_get_unsafe_id (int ) ;
 scalar_t__ efx_ef10_filter_get_unsafe_pri (int ) ;
 scalar_t__ efx_ef10_filter_pri (struct efx_ef10_filter_table*,struct efx_filter_spec const*) ;
 int up_read (int *) ;

__attribute__((used)) static int efx_ef10_filter_get_safe(struct efx_nic *efx,
        enum efx_filter_priority priority,
        u32 filter_id, struct efx_filter_spec *spec)
{
 unsigned int filter_idx = efx_ef10_filter_get_unsafe_id(filter_id);
 const struct efx_filter_spec *saved_spec;
 struct efx_ef10_filter_table *table;
 int rc;

 down_read(&efx->filter_sem);
 table = efx->filter_state;
 down_read(&table->lock);
 saved_spec = efx_ef10_filter_entry_spec(table, filter_idx);
 if (saved_spec && saved_spec->priority == priority &&
     efx_ef10_filter_pri(table, saved_spec) ==
     efx_ef10_filter_get_unsafe_pri(filter_id)) {
  *spec = *saved_spec;
  rc = 0;
 } else {
  rc = -ENOENT;
 }
 up_read(&table->lock);
 up_read(&efx->filter_sem);
 return rc;
}
