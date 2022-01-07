
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_self_tests {int phy_ext; } ;
struct efx_nic {int net_dev; int mac_lock; TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* run_tests ) (struct efx_nic*,int ,unsigned int) ;} ;


 int EPERM ;
 int drv ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_info (struct efx_nic*,int ,int ,char*,char*) ;
 int stub1 (struct efx_nic*,int ,unsigned int) ;

__attribute__((used)) static int efx_test_phy(struct efx_nic *efx, struct efx_self_tests *tests,
   unsigned flags)
{
 int rc;

 if (!efx->phy_op->run_tests)
  return 0;

 mutex_lock(&efx->mac_lock);
 rc = efx->phy_op->run_tests(efx, tests->phy_ext, flags);
 mutex_unlock(&efx->mac_lock);
 if (rc == -EPERM)
  rc = 0;
 else
  netif_info(efx, drv, efx->net_dev,
      "%s phy selftest\n", rc ? "Failed" : "Passed");

 return rc;
}
