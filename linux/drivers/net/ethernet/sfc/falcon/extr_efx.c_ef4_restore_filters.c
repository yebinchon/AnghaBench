
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int filter_sem; TYPE_1__* type; } ;
struct TYPE_2__ {int (* filter_table_restore ) (struct ef4_nic*) ;} ;


 int down_read (int *) ;
 int stub1 (struct ef4_nic*) ;
 int up_read (int *) ;

__attribute__((used)) static void ef4_restore_filters(struct ef4_nic *efx)
{
 down_read(&efx->filter_sem);
 efx->type->filter_table_restore(efx);
 up_read(&efx->filter_sem);
}
