
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct efx_mcdi_iface {int iface_lock; } ;
struct TYPE_2__ {int (* mcdi_poll_response ) (struct efx_nic*) ;} ;


 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_read_response_header (struct efx_nic*) ;
 int rmb () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static bool efx_mcdi_poll_once(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 rmb();
 if (!efx->type->mcdi_poll_response(efx))
  return 0;

 spin_lock_bh(&mcdi->iface_lock);
 efx_mcdi_read_response_header(efx);
 spin_unlock_bh(&mcdi->iface_lock);

 return 1;
}
