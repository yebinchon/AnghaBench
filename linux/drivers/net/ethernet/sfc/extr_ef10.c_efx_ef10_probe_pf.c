
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_ef10_probe (struct efx_nic*) ;

__attribute__((used)) static int efx_ef10_probe_pf(struct efx_nic *efx)
{
 return efx_ef10_probe(efx);
}
