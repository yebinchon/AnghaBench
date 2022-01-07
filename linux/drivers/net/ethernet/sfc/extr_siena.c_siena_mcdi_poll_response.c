
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_DWORD_0 ;
 int EFX_DWORD_FIELD (int ,int ) ;
 unsigned int FR_CZ_MC_TREG_SMEM ;
 int MCDI_HEADER_RESPONSE ;
 unsigned int MCDI_PDU (struct efx_nic*) ;
 int efx_readd (struct efx_nic*,int *,unsigned int) ;

__attribute__((used)) static bool siena_mcdi_poll_response(struct efx_nic *efx)
{
 unsigned int pdu = FR_CZ_MC_TREG_SMEM + MCDI_PDU(efx);
 efx_dword_t hdr;

 efx_readd(efx, &hdr, pdu);





 return EFX_DWORD_FIELD(hdr, EFX_DWORD_0) != 0xffffffff &&
  EFX_DWORD_FIELD(hdr, MCDI_HEADER_RESPONSE);
}
