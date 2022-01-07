
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct efx_ef10_nic_data {TYPE_1__ mcdi_buf; } ;
typedef int efx_dword_t ;


 int EFX_DWORD_FIELD (int const,int ) ;
 int MCDI_HEADER_RESPONSE ;
 int rmb () ;

__attribute__((used)) static bool efx_ef10_mcdi_poll_response(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 const efx_dword_t hdr = *(const efx_dword_t *)nic_data->mcdi_buf.addr;

 rmb();
 return EFX_DWORD_FIELD(hdr, MCDI_HEADER_RESPONSE);
}
