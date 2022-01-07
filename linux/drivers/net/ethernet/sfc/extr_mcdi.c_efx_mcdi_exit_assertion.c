
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int EIO ;
 int MCDI_DECLARE_BUF (int ,int ) ;
 int MCDI_SET_DWORD (int ,int ,int ) ;
 int MC_CMD_REBOOT ;
 int MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION ;
 int MC_CMD_REBOOT_IN_LEN ;
 scalar_t__ MC_CMD_REBOOT_OUT_LEN ;
 int REBOOT_IN_FLAGS ;
 int efx_mcdi_display_error (struct efx_nic*,int ,int ,int *,int ,int) ;
 int efx_mcdi_rpc_quiet (struct efx_nic*,int ,int ,int ,int *,int ,int *) ;
 int inbuf ;

__attribute__((used)) static int efx_mcdi_exit_assertion(struct efx_nic *efx)
{
 MCDI_DECLARE_BUF(inbuf, MC_CMD_REBOOT_IN_LEN);
 int rc;







 BUILD_BUG_ON(MC_CMD_REBOOT_OUT_LEN != 0);
 MCDI_SET_DWORD(inbuf, REBOOT_IN_FLAGS,
         MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION);
 rc = efx_mcdi_rpc_quiet(efx, MC_CMD_REBOOT, inbuf, MC_CMD_REBOOT_IN_LEN,
    ((void*)0), 0, ((void*)0));
 if (rc == -EIO)
  rc = 0;
 if (rc)
  efx_mcdi_display_error(efx, MC_CMD_REBOOT, MC_CMD_REBOOT_IN_LEN,
           ((void*)0), 0, rc);
 return rc;
}
