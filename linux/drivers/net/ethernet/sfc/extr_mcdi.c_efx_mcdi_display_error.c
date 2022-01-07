
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;
typedef int efx_dword_t ;


 int EPERM ;
 int ERR_ARG ;
 int ERR_CODE ;
 int MCDI_DWORD (int *,int ) ;
 int MC_CMD_ERR_ARG_OFST ;
 int MC_CMD_ERR_CODE_OFST ;
 int err ;
 int hw ;
 int netif_cond_dbg (struct efx_nic*,int ,int ,int,int ,char*,unsigned int,size_t,int,int,int) ;

void efx_mcdi_display_error(struct efx_nic *efx, unsigned cmd,
       size_t inlen, efx_dword_t *outbuf,
       size_t outlen, int rc)
{
 int code = 0, err_arg = 0;

 if (outlen >= MC_CMD_ERR_CODE_OFST + 4)
  code = MCDI_DWORD(outbuf, ERR_CODE);
 if (outlen >= MC_CMD_ERR_ARG_OFST + 4)
  err_arg = MCDI_DWORD(outbuf, ERR_ARG);
 netif_cond_dbg(efx, hw, efx->net_dev, rc == -EPERM, err,
         "MC command 0x%x inlen %zu failed rc=%d (raw=%d) arg=%d\n",
         cmd, inlen, rc, code, err_arg);
}
