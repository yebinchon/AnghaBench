
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ phy_type; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_8 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int EF4_SET_OWORD_FIELD (int ,int ,int ) ;
 int FFE_AB_XX_SD_CTL_DRV_DEF ;
 int FFE_AB_XX_TXDRV_DEQ_DEF ;
 int FFE_AB_XX_TXDRV_DTX_DEF ;
 int FRF_AB_XX_DEQA ;
 int FRF_AB_XX_DEQB ;
 int FRF_AB_XX_DEQC ;
 int FRF_AB_XX_DEQD ;
 int FRF_AB_XX_DTXA ;
 int FRF_AB_XX_DTXB ;
 int FRF_AB_XX_DTXC ;
 int FRF_AB_XX_DTXD ;
 int FRF_AB_XX_HIDRVA ;
 int FRF_AB_XX_HIDRVB ;
 int FRF_AB_XX_HIDRVC ;
 int FRF_AB_XX_HIDRVD ;
 int FRF_AB_XX_LODRVA ;
 int FRF_AB_XX_LODRVB ;
 int FRF_AB_XX_LODRVC ;
 int FRF_AB_XX_LODRVD ;
 int FR_AB_XX_SD_CTL ;
 int FR_AB_XX_TXDRV_CTL ;
 scalar_t__ PHY_TYPE_NONE ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static void falcon_setup_xaui(struct ef4_nic *efx)
{
 ef4_oword_t sdctl, txdrv;



 if (efx->phy_type == PHY_TYPE_NONE)
  return;

 ef4_reado(efx, &sdctl, FR_AB_XX_SD_CTL);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_HIDRVD, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_LODRVD, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_HIDRVC, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_LODRVC, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_HIDRVB, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_LODRVB, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_HIDRVA, FFE_AB_XX_SD_CTL_DRV_DEF);
 EF4_SET_OWORD_FIELD(sdctl, FRF_AB_XX_LODRVA, FFE_AB_XX_SD_CTL_DRV_DEF);
 ef4_writeo(efx, &sdctl, FR_AB_XX_SD_CTL);

 EF4_POPULATE_OWORD_8(txdrv,
        FRF_AB_XX_DEQD, FFE_AB_XX_TXDRV_DEQ_DEF,
        FRF_AB_XX_DEQC, FFE_AB_XX_TXDRV_DEQ_DEF,
        FRF_AB_XX_DEQB, FFE_AB_XX_TXDRV_DEQ_DEF,
        FRF_AB_XX_DEQA, FFE_AB_XX_TXDRV_DEQ_DEF,
        FRF_AB_XX_DTXD, FFE_AB_XX_TXDRV_DTX_DEF,
        FRF_AB_XX_DTXC, FFE_AB_XX_TXDRV_DTX_DEF,
        FRF_AB_XX_DTXB, FFE_AB_XX_TXDRV_DTX_DEF,
        FRF_AB_XX_DTXA, FFE_AB_XX_TXDRV_DTX_DEF);
 ef4_writeo(efx, &txdrv, FR_AB_XX_TXDRV_CTL);
}
