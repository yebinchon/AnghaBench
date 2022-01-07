
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_mcdi_async_completer ;
typedef int efx_dword_t ;


 int _efx_mcdi_rpc_async (struct efx_nic*,unsigned int,int const*,size_t,size_t,int *,unsigned long,int) ;

int
efx_mcdi_rpc_async(struct efx_nic *efx, unsigned int cmd,
     const efx_dword_t *inbuf, size_t inlen, size_t outlen,
     efx_mcdi_async_completer *complete, unsigned long cookie)
{
 return _efx_mcdi_rpc_async(efx, cmd, inbuf, inlen, outlen, complete,
       cookie, 0);
}
