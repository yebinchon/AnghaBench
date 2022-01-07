
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_filter_spec {int priority; } ;
struct efx_ef10_filter_table {int lock; } ;
typedef int s32 ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 int EMSGSIZE ;
 unsigned int HUNT_FILTER_TBL_ROWS ;
 int down_read (int *) ;
 struct efx_filter_spec* efx_ef10_filter_entry_spec (struct efx_ef10_filter_table*,unsigned int) ;
 int efx_ef10_filter_pri (struct efx_ef10_filter_table*,struct efx_filter_spec*) ;
 int efx_ef10_make_filter_id (int ,unsigned int) ;
 int up_read (int *) ;

__attribute__((used)) static s32 efx_ef10_filter_get_rx_ids(struct efx_nic *efx,
          enum efx_filter_priority priority,
          u32 *buf, u32 size)
{
 struct efx_ef10_filter_table *table;
 struct efx_filter_spec *spec;
 unsigned int filter_idx;
 s32 count = 0;

 down_read(&efx->filter_sem);
 table = efx->filter_state;
 down_read(&table->lock);

 for (filter_idx = 0; filter_idx < HUNT_FILTER_TBL_ROWS; filter_idx++) {
  spec = efx_ef10_filter_entry_spec(table, filter_idx);
  if (spec && spec->priority == priority) {
   if (count == size) {
    count = -EMSGSIZE;
    break;
   }
   buf[count++] =
    efx_ef10_make_filter_id(
     efx_ef10_filter_pri(table, spec),
     filter_idx);
  }
 }
 up_read(&table->lock);
 up_read(&efx->filter_sem);
 return count;
}
