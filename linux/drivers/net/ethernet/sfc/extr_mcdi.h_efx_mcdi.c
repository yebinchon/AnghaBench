
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* mcdi; } ;
struct efx_mcdi_iface {int dummy; } ;
struct TYPE_2__ {struct efx_mcdi_iface iface; } ;


 int EFX_WARN_ON_PARANOID (int) ;

__attribute__((used)) static inline struct efx_mcdi_iface *efx_mcdi(struct efx_nic *efx)
{
 EFX_WARN_ON_PARANOID(!efx->mcdi);
 return &efx->mcdi->iface;
}
