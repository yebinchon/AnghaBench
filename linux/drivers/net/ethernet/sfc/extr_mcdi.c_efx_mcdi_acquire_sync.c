
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int state; int wq; } ;


 scalar_t__ MCDI_STATE_QUIESCENT ;
 int MCDI_STATE_RUNNING_SYNC ;
 scalar_t__ cmpxchg (int *,scalar_t__,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void efx_mcdi_acquire_sync(struct efx_mcdi_iface *mcdi)
{



 wait_event(mcdi->wq,
     cmpxchg(&mcdi->state,
      MCDI_STATE_QUIESCENT, MCDI_STATE_RUNNING_SYNC) ==
     MCDI_STATE_QUIESCENT);
}
