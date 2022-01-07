
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct TYPE_2__ {scalar_t__ dma_addr; int * addr; } ;
struct efx_ef10_nic_data {TYPE_1__ mcdi_buf; } ;
typedef int efx_dword_t ;


 int ER_DZ_MC_DB_HWRD ;
 int ER_DZ_MC_DB_LWRD ;
 int _efx_writed (struct efx_nic*,int ,int ) ;
 int cpu_to_le32 (int) ;
 int memcpy (int *,int const*,size_t) ;
 int wmb () ;

__attribute__((used)) static void efx_ef10_mcdi_request(struct efx_nic *efx,
      const efx_dword_t *hdr, size_t hdr_len,
      const efx_dword_t *sdu, size_t sdu_len)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 u8 *pdu = nic_data->mcdi_buf.addr;

 memcpy(pdu, hdr, hdr_len);
 memcpy(pdu + hdr_len, sdu, sdu_len);
 wmb();







 _efx_writed(efx, cpu_to_le32((u64)nic_data->mcdi_buf.dma_addr >> 32),
      ER_DZ_MC_DB_LWRD);
 _efx_writed(efx, cpu_to_le32((u32)nic_data->mcdi_buf.dma_addr),
      ER_DZ_MC_DB_HWRD);
}
