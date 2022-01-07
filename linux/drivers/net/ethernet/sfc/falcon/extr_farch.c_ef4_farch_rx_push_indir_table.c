
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int * rx_indir_table; } ;
typedef int ef4_dword_t ;


 size_t ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int EF4_POPULATE_DWORD_1 (int ,int ,int ) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int FRF_BZ_IT_QUEUE ;
 scalar_t__ FR_BZ_RX_INDIRECTION_TBL ;
 size_t FR_BZ_RX_INDIRECTION_TBL_ROWS ;
 size_t FR_BZ_RX_INDIRECTION_TBL_STEP ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_writed (struct ef4_nic*,int *,scalar_t__) ;

void ef4_farch_rx_push_indir_table(struct ef4_nic *efx)
{
 size_t i = 0;
 ef4_dword_t dword;

 BUG_ON(ef4_nic_rev(efx) < EF4_REV_FALCON_B0);

 BUILD_BUG_ON(ARRAY_SIZE(efx->rx_indir_table) !=
       FR_BZ_RX_INDIRECTION_TBL_ROWS);

 for (i = 0; i < FR_BZ_RX_INDIRECTION_TBL_ROWS; i++) {
  EF4_POPULATE_DWORD_1(dword, FRF_BZ_IT_QUEUE,
         efx->rx_indir_table[i]);
  ef4_writed(efx, &dword,
      FR_BZ_RX_INDIRECTION_TBL +
      FR_BZ_RX_INDIRECTION_TBL_STEP * i);
 }
}
