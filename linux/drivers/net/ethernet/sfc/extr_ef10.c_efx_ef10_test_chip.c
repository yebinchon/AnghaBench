
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_self_tests {int memory; int registers; } ;
struct efx_nic {int dummy; } ;


 int EPERM ;
 int MC_CMD_ENABLE_OFFLINE_BIST ;
 int MC_CMD_MC_MEM_BIST ;
 int MC_CMD_REG_BIST ;
 int RESET_TYPE_WORLD ;
 scalar_t__ efx_ef10_run_bist (struct efx_nic*,int ) ;
 int efx_mcdi_reset (struct efx_nic*,int ) ;
 int efx_mcdi_rpc (struct efx_nic*,int ,int *,int ,int *,int ,int *) ;
 int efx_reset_down (struct efx_nic*,int ) ;
 int efx_reset_up (struct efx_nic*,int ,int) ;

__attribute__((used)) static int
efx_ef10_test_chip(struct efx_nic *efx, struct efx_self_tests *tests)
{
 int rc, rc2;

 efx_reset_down(efx, RESET_TYPE_WORLD);

 rc = efx_mcdi_rpc(efx, MC_CMD_ENABLE_OFFLINE_BIST,
     ((void*)0), 0, ((void*)0), 0, ((void*)0));
 if (rc != 0)
  goto out;

 tests->memory = efx_ef10_run_bist(efx, MC_CMD_MC_MEM_BIST) ? -1 : 1;
 tests->registers = efx_ef10_run_bist(efx, MC_CMD_REG_BIST) ? -1 : 1;

 rc = efx_mcdi_reset(efx, RESET_TYPE_WORLD);

out:
 if (rc == -EPERM)
  rc = 0;
 rc2 = efx_reset_up(efx, RESET_TYPE_WORLD, rc == 0);
 return rc ? rc : rc2;
}
