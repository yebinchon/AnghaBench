
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int _efx_mcdi_rpc_finish (struct efx_nic*,unsigned int,size_t,int *,size_t,size_t*,int,int *,int *) ;

int efx_mcdi_rpc_finish_quiet(struct efx_nic *efx, unsigned cmd, size_t inlen,
         efx_dword_t *outbuf, size_t outlen,
         size_t *outlen_actual)
{
 return _efx_mcdi_rpc_finish(efx, cmd, inlen, outbuf, outlen,
        outlen_actual, 1, ((void*)0), ((void*)0));
}
