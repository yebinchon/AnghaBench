
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rx_indir_table; } ;
struct efx_nic {TYPE_1__ rss_context; } ;
typedef int efx_dword_t ;


 size_t ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int EFX_POPULATE_DWORD_1 (int ,int ,int ) ;
 int FRF_BZ_IT_QUEUE ;
 scalar_t__ FR_BZ_RX_INDIRECTION_TBL ;
 size_t FR_BZ_RX_INDIRECTION_TBL_ROWS ;
 size_t FR_BZ_RX_INDIRECTION_TBL_STEP ;
 int efx_writed (struct efx_nic*,int *,scalar_t__) ;

void efx_farch_rx_push_indir_table(struct efx_nic *efx)
{
 size_t i = 0;
 efx_dword_t dword;

 BUILD_BUG_ON(ARRAY_SIZE(efx->rss_context.rx_indir_table) !=
       FR_BZ_RX_INDIRECTION_TBL_ROWS);

 for (i = 0; i < FR_BZ_RX_INDIRECTION_TBL_ROWS; i++) {
  EFX_POPULATE_DWORD_1(dword, FRF_BZ_IT_QUEUE,
         efx->rss_context.rx_indir_table[i]);
  efx_writed(efx, &dword,
      FR_BZ_RX_INDIRECTION_TBL +
      FR_BZ_RX_INDIRECTION_TBL_STEP * i);
 }
}
