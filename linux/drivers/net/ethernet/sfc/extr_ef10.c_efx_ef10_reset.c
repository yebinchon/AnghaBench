
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;


 int EPERM ;
 int RESET_TYPE_ALL ;
 int RESET_TYPE_MCDI_TIMEOUT ;
 int RESET_TYPE_WORLD ;
 int efx_ef10_reset_mc_allocations (struct efx_nic*) ;
 int efx_mcdi_reset (struct efx_nic*,int) ;

__attribute__((used)) static int efx_ef10_reset(struct efx_nic *efx, enum reset_type reset_type)
{
 int rc = efx_mcdi_reset(efx, reset_type);




 if (reset_type == RESET_TYPE_WORLD && rc == -EPERM)
  rc = 0;







 if ((reset_type == RESET_TYPE_ALL ||
      reset_type == RESET_TYPE_MCDI_TIMEOUT) && !rc)
  efx_ef10_reset_mc_allocations(efx);
 return rc;
}
