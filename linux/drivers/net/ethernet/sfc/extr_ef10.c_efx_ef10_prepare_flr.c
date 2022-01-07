
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int active_queues; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void efx_ef10_prepare_flr(struct efx_nic *efx)
{
 atomic_set(&efx->active_queues, 0);
}
