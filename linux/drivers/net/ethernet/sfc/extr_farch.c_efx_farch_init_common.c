
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_addr; } ;
struct efx_nic {int tx_dc_base; int rx_dc_base; int irq_level; TYPE_1__ irq_status; } ;
typedef int efx_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EFX_INT_MODE_USE_MSI (struct efx_nic*) ;
 int EFX_INVERT_OWORD (int ) ;
 int EFX_POPULATE_OWORD_1 (int ,int ,int) ;
 int EFX_POPULATE_OWORD_2 (int ,int ,int ,int ,int ) ;
 int EFX_POPULATE_OWORD_3 (int ,int ,int,int ,int,int ,int) ;
 int EFX_POPULATE_OWORD_4 (int ,int ,int,int ,int,int ,int ,int ,int ) ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 scalar_t__ EFX_WORKAROUND_17213 (struct efx_nic*) ;
 int FFE_BZ_TX_PACE_RESERVED ;
 int FRF_AZ_ILL_ADR_INT_KER_EN ;
 int FRF_AZ_INT_ADR_KER ;
 int FRF_AZ_NORM_INT_VEC_DIS_KER ;
 int FRF_AZ_RBUF_OWN_INT_KER_EN ;
 int FRF_AZ_RX_DC_PF_LWM ;
 int FRF_AZ_RX_DC_SIZE ;
 int FRF_AZ_SRM_RX_DC_BASE_ADR ;
 int FRF_AZ_SRM_TX_DC_BASE_ADR ;
 int FRF_AZ_TBUF_OWN_INT_KER_EN ;
 int FRF_AZ_TX_DC_SIZE ;
 int FRF_AZ_TX_DIS_NON_IP_EV ;
 int FRF_AZ_TX_ONE_PKT_PER_Q ;
 int FRF_AZ_TX_PREF_THRESHOLD ;
 int FRF_AZ_TX_PREF_WD_TMR ;
 int FRF_AZ_TX_PUSH_EN ;
 int FRF_AZ_TX_RX_SPACER ;
 int FRF_AZ_TX_RX_SPACER_EN ;
 int FRF_AZ_TX_SOFT_EVT_EN ;
 int FRF_BZ_TX_FLUSH_MIN_LEN_EN ;
 int FRF_BZ_TX_PACE_BIN_TH ;
 int FRF_BZ_TX_PACE_FB_BASE ;
 int FRF_BZ_TX_PACE_SB_AF ;
 int FRF_BZ_TX_PACE_SB_NOT_AF ;
 int FRF_CZ_SRAM_PERR_INT_P_KER_EN ;
 int FR_AZ_FATAL_INTR_KER ;
 int FR_AZ_INT_ADR_KER ;
 int FR_AZ_RX_DC_CFG ;
 int FR_AZ_RX_DC_PF_WM ;
 int FR_AZ_SRM_RX_DC_CFG ;
 int FR_AZ_SRM_TX_DC_CFG ;
 int FR_AZ_TX_DC_CFG ;
 int FR_AZ_TX_RESERVED ;
 int FR_BZ_TX_PACE ;
 int RX_DC_ENTRIES ;
 int RX_DC_ENTRIES_ORDER ;
 int TX_DC_ENTRIES ;
 int TX_DC_ENTRIES_ORDER ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

void efx_farch_init_common(struct efx_nic *efx)
{
 efx_oword_t temp;


 EFX_POPULATE_OWORD_1(temp, FRF_AZ_SRM_TX_DC_BASE_ADR, efx->tx_dc_base);
 efx_writeo(efx, &temp, FR_AZ_SRM_TX_DC_CFG);
 EFX_POPULATE_OWORD_1(temp, FRF_AZ_SRM_RX_DC_BASE_ADR, efx->rx_dc_base);
 efx_writeo(efx, &temp, FR_AZ_SRM_RX_DC_CFG);


 BUILD_BUG_ON(TX_DC_ENTRIES != (8 << TX_DC_ENTRIES_ORDER));
 EFX_POPULATE_OWORD_1(temp, FRF_AZ_TX_DC_SIZE, TX_DC_ENTRIES_ORDER);
 efx_writeo(efx, &temp, FR_AZ_TX_DC_CFG);




 BUILD_BUG_ON(RX_DC_ENTRIES != (8 << RX_DC_ENTRIES_ORDER));
 EFX_POPULATE_OWORD_1(temp, FRF_AZ_RX_DC_SIZE, RX_DC_ENTRIES_ORDER);
 efx_writeo(efx, &temp, FR_AZ_RX_DC_CFG);
 EFX_POPULATE_OWORD_1(temp, FRF_AZ_RX_DC_PF_LWM, RX_DC_ENTRIES - 8);
 efx_writeo(efx, &temp, FR_AZ_RX_DC_PF_WM);


 EFX_POPULATE_OWORD_2(temp,
        FRF_AZ_NORM_INT_VEC_DIS_KER,
        EFX_INT_MODE_USE_MSI(efx),
        FRF_AZ_INT_ADR_KER, efx->irq_status.dma_addr);
 efx_writeo(efx, &temp, FR_AZ_INT_ADR_KER);

 if (EFX_WORKAROUND_17213(efx) && !EFX_INT_MODE_USE_MSI(efx))

  efx->irq_level = 0x1f;
 else

  efx->irq_level = 0;







 EFX_POPULATE_OWORD_3(temp,
        FRF_AZ_ILL_ADR_INT_KER_EN, 1,
        FRF_AZ_RBUF_OWN_INT_KER_EN, 1,
        FRF_AZ_TBUF_OWN_INT_KER_EN, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_CZ_SRAM_PERR_INT_P_KER_EN, 1);
 EFX_INVERT_OWORD(temp);
 efx_writeo(efx, &temp, FR_AZ_FATAL_INTR_KER);




 efx_reado(efx, &temp, FR_AZ_TX_RESERVED);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_RX_SPACER, 0xfe);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_RX_SPACER_EN, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_ONE_PKT_PER_Q, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_PUSH_EN, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_DIS_NON_IP_EV, 1);

 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_SOFT_EVT_EN, 1);

 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_PREF_THRESHOLD, 2);

 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_PREF_WD_TMR, 0x3fffff);

 EFX_SET_OWORD_FIELD(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
 efx_writeo(efx, &temp, FR_AZ_TX_RESERVED);

 EFX_POPULATE_OWORD_4(temp,

        FRF_BZ_TX_PACE_SB_NOT_AF, 0x15,
        FRF_BZ_TX_PACE_SB_AF, 0xb,
        FRF_BZ_TX_PACE_FB_BASE, 0,

        FRF_BZ_TX_PACE_BIN_TH,
        FFE_BZ_TX_PACE_RESERVED);
 efx_writeo(efx, &temp, FR_BZ_TX_PACE);
}
