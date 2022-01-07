
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct TYPE_2__ {int * addr; } ;
struct efx_ef10_nic_data {TYPE_1__ mcdi_buf; } ;
typedef int efx_dword_t ;


 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void
efx_ef10_mcdi_read_response(struct efx_nic *efx, efx_dword_t *outbuf,
       size_t offset, size_t outlen)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 const u8 *pdu = nic_data->mcdi_buf.addr;

 memcpy(outbuf, pdu + offset, outlen);
}
