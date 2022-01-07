
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int filter_sem; struct efx_ef10_filter_table* filter_state; } ;
struct efx_ef10_filter_table {int lock; } ;
typedef enum efx_filter_priority { ____Placeholder_efx_filter_priority } efx_filter_priority ;


 int down_read (int *) ;
 int down_write (int *) ;
 int efx_ef10_filter_remove_internal (struct efx_nic*,unsigned int,int ,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int efx_ef10_filter_remove_safe(struct efx_nic *efx,
           enum efx_filter_priority priority,
           u32 filter_id)
{
 struct efx_ef10_filter_table *table;
 int rc;

 down_read(&efx->filter_sem);
 table = efx->filter_state;
 down_write(&table->lock);
 rc = efx_ef10_filter_remove_internal(efx, 1U << priority, filter_id,
          0);
 up_write(&table->lock);
 up_read(&efx->filter_sem);
 return rc;
}
