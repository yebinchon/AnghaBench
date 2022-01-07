
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct efx_nic {int filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {int lock; TYPE_1__* entry; } ;
typedef scalar_t__ s32 ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;
struct TYPE_4__ {int priority; } ;
struct TYPE_3__ {scalar_t__ spec; } ;


 unsigned int HUNT_FILTER_TBL_ROWS ;
 int down_read (int *) ;
 TYPE_2__* efx_ef10_filter_entry_spec (struct efx_ef10_filter_table*,unsigned int) ;
 int up_read (int *) ;

__attribute__((used)) static u32 efx_ef10_filter_count_rx_used(struct efx_nic *efx,
      enum efx_filter_priority priority)
{
 struct efx_ef10_filter_table *table;
 unsigned int filter_idx;
 s32 count = 0;

 down_read(&efx->filter_sem);
 table = efx->filter_state;
 down_read(&table->lock);
 for (filter_idx = 0; filter_idx < HUNT_FILTER_TBL_ROWS; filter_idx++) {
  if (table->entry[filter_idx].spec &&
      efx_ef10_filter_entry_spec(table, filter_idx)->priority ==
      priority)
   ++count;
 }
 up_read(&table->lock);
 up_read(&efx->filter_sem);
 return count;
}
