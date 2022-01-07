
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int mac_lock; } ;


 int EFX_ASSERT_RESET_SERIALISED (struct efx_nic*) ;
 int __efx_reconfigure_port (struct efx_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int efx_reconfigure_port(struct efx_nic *efx)
{
 int rc;

 EFX_ASSERT_RESET_SERIALISED(efx);

 mutex_lock(&efx->mac_lock);
 rc = __efx_reconfigure_port(efx);
 mutex_unlock(&efx->mac_lock);

 return rc;
}
