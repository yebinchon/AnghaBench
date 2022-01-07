
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_self_tests {int registers; } ;
struct ef4_nic {int loopback_modes; int loopback_mode; int mac_lock; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;


 int ARRAY_SIZE (int ) ;
 int LOOPBACK_XGMII ;
 int RESET_TYPE_INVISIBLE ;
 int __ef4_reconfigure_port (struct ef4_nic*) ;
 int __ffs (int) ;
 scalar_t__ ef4_farch_test_registers (struct ef4_nic*,int ,int ) ;
 int ef4_reset_down (struct ef4_nic*,int) ;
 int ef4_reset_up (struct ef4_nic*,int,int) ;
 int falcon_b0_register_tests ;
 int falcon_reset_hw (struct ef4_nic*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
falcon_b0_test_chip(struct ef4_nic *efx, struct ef4_self_tests *tests)
{
 enum reset_type reset_method = RESET_TYPE_INVISIBLE;
 int rc, rc2;

 mutex_lock(&efx->mac_lock);
 if (efx->loopback_modes) {


  if (efx->loopback_modes & (1 << LOOPBACK_XGMII))
   efx->loopback_mode = LOOPBACK_XGMII;
  else
   efx->loopback_mode = __ffs(efx->loopback_modes);
 }
 __ef4_reconfigure_port(efx);
 mutex_unlock(&efx->mac_lock);

 ef4_reset_down(efx, reset_method);

 tests->registers =
  ef4_farch_test_registers(efx, falcon_b0_register_tests,
      ARRAY_SIZE(falcon_b0_register_tests))
  ? -1 : 1;

 rc = falcon_reset_hw(efx, reset_method);
 rc2 = ef4_reset_up(efx, reset_method, rc == 0);
 return rc ? rc : rc2;
}
