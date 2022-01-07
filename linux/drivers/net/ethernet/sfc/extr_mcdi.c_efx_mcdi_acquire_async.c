
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int state; } ;


 scalar_t__ MCDI_STATE_QUIESCENT ;
 int MCDI_STATE_RUNNING_ASYNC ;
 scalar_t__ cmpxchg (int *,scalar_t__,int ) ;

__attribute__((used)) static bool efx_mcdi_acquire_async(struct efx_mcdi_iface *mcdi)
{
 return cmpxchg(&mcdi->state,
         MCDI_STATE_QUIESCENT, MCDI_STATE_RUNNING_ASYNC) ==
  MCDI_STATE_QUIESCENT;
}
