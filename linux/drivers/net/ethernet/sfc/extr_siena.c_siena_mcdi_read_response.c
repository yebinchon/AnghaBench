
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 unsigned int DIV_ROUND_UP (size_t,int) ;
 unsigned int FR_CZ_MC_TREG_SMEM ;
 unsigned int MCDI_PDU (struct efx_nic*) ;
 int efx_readd (struct efx_nic*,int *,unsigned int) ;

__attribute__((used)) static void siena_mcdi_read_response(struct efx_nic *efx, efx_dword_t *outbuf,
         size_t offset, size_t outlen)
{
 unsigned int pdu = FR_CZ_MC_TREG_SMEM + MCDI_PDU(efx);
 unsigned int outlen_dw = DIV_ROUND_UP(outlen, 4);
 int i;

 for (i = 0; i < outlen_dw; i++)
  efx_readd(efx, &outbuf[i], pdu + offset + 4 * i);
}
