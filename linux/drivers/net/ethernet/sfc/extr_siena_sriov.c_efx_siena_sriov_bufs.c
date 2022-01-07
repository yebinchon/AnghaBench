
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct efx_nic {scalar_t__ membase; } ;
typedef int efx_qword_t ;


 int EFX_POPULATE_QWORD_3 (int ,int ,int ,int ,int,int ,int ) ;
 int FRF_AZ_BUF_ADR_FBUF ;
 int FRF_AZ_BUF_ADR_REGION ;
 int FRF_AZ_BUF_OWNER_ID_FBUF ;
 scalar_t__ FR_BZ_BUF_FULL_TBL ;
 int efx_sram_writeq (struct efx_nic*,scalar_t__,int *,unsigned int) ;

__attribute__((used)) static void efx_siena_sriov_bufs(struct efx_nic *efx, unsigned offset,
     u64 *addr, unsigned count)
{
 efx_qword_t buf;
 unsigned pos;

 for (pos = 0; pos < count; ++pos) {
  EFX_POPULATE_QWORD_3(buf,
         FRF_AZ_BUF_ADR_REGION, 0,
         FRF_AZ_BUF_ADR_FBUF,
         addr ? addr[pos] >> 12 : 0,
         FRF_AZ_BUF_OWNER_ID_FBUF, 0);
  efx_sram_writeq(efx, efx->membase + FR_BZ_BUF_FULL_TBL,
    &buf, offset + pos);
 }
}
