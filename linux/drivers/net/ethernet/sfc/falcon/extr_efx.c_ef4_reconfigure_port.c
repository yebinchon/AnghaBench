
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int mac_lock; } ;


 int EF4_ASSERT_RESET_SERIALISED (struct ef4_nic*) ;
 int __ef4_reconfigure_port (struct ef4_nic*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ef4_reconfigure_port(struct ef4_nic *efx)
{
 int rc;

 EF4_ASSERT_RESET_SERIALISED(efx);

 mutex_lock(&efx->mac_lock);
 rc = __ef4_reconfigure_port(efx);
 mutex_unlock(&efx->mac_lock);

 return rc;
}
