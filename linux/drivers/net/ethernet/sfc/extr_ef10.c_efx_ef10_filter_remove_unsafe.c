
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_nic {struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {int lock; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 scalar_t__ EFX_EF10_FILTER_ID_INVALID ;
 int down_write (int *) ;
 int efx_ef10_filter_remove_internal (struct efx_nic*,unsigned int,scalar_t__,int) ;
 int up_write (int *) ;

__attribute__((used)) static void efx_ef10_filter_remove_unsafe(struct efx_nic *efx,
       enum efx_filter_priority priority,
       u32 filter_id)
{
 struct efx_ef10_filter_table *table = efx->filter_state;

 if (filter_id == EFX_EF10_FILTER_ID_INVALID)
  return;

 down_write(&table->lock);
 efx_ef10_filter_remove_internal(efx, 1U << priority, filter_id,
     1);
 up_write(&table->lock);
}
