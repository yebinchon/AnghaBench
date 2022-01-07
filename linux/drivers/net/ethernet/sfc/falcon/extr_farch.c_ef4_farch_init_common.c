
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_addr; } ;
struct ef4_nic {int tx_dc_base; int rx_dc_base; scalar_t__ irq_level; TYPE_1__ irq_status; } ;
typedef int ef4_oword_t ;


 int BUILD_BUG_ON (int) ;
 int EF4_INT_MODE_USE_MSI (struct ef4_nic*) ;
 int EF4_INVERT_OWORD (int ) ;
 int EF4_POPULATE_OWORD_1 (int ,int ,int) ;
 int EF4_POPULATE_OWORD_2 (int ,int ,int ,int ,int ) ;
 int EF4_POPULATE_OWORD_3 (int ,int ,int,int ,int,int ,int) ;
 int EF4_POPULATE_OWORD_4 (int ,int ,int,int ,int,int ,int ,int ,int ) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
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
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;

void ef4_farch_init_common(struct ef4_nic *efx)
{
 ef4_oword_t temp;


 EF4_POPULATE_OWORD_1(temp, FRF_AZ_SRM_TX_DC_BASE_ADR, efx->tx_dc_base);
 ef4_writeo(efx, &temp, FR_AZ_SRM_TX_DC_CFG);
 EF4_POPULATE_OWORD_1(temp, FRF_AZ_SRM_RX_DC_BASE_ADR, efx->rx_dc_base);
 ef4_writeo(efx, &temp, FR_AZ_SRM_RX_DC_CFG);


 BUILD_BUG_ON(TX_DC_ENTRIES != (8 << TX_DC_ENTRIES_ORDER));
 EF4_POPULATE_OWORD_1(temp, FRF_AZ_TX_DC_SIZE, TX_DC_ENTRIES_ORDER);
 ef4_writeo(efx, &temp, FR_AZ_TX_DC_CFG);




 BUILD_BUG_ON(RX_DC_ENTRIES != (8 << RX_DC_ENTRIES_ORDER));
 EF4_POPULATE_OWORD_1(temp, FRF_AZ_RX_DC_SIZE, RX_DC_ENTRIES_ORDER);
 ef4_writeo(efx, &temp, FR_AZ_RX_DC_CFG);
 EF4_POPULATE_OWORD_1(temp, FRF_AZ_RX_DC_PF_LWM, RX_DC_ENTRIES - 8);
 ef4_writeo(efx, &temp, FR_AZ_RX_DC_PF_WM);


 EF4_POPULATE_OWORD_2(temp,
        FRF_AZ_NORM_INT_VEC_DIS_KER,
        EF4_INT_MODE_USE_MSI(efx),
        FRF_AZ_INT_ADR_KER, efx->irq_status.dma_addr);
 ef4_writeo(efx, &temp, FR_AZ_INT_ADR_KER);


 efx->irq_level = 0;







 EF4_POPULATE_OWORD_3(temp,
        FRF_AZ_ILL_ADR_INT_KER_EN, 1,
        FRF_AZ_RBUF_OWN_INT_KER_EN, 1,
        FRF_AZ_TBUF_OWN_INT_KER_EN, 1);
 EF4_INVERT_OWORD(temp);
 ef4_writeo(efx, &temp, FR_AZ_FATAL_INTR_KER);




 ef4_reado(efx, &temp, FR_AZ_TX_RESERVED);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_RX_SPACER, 0xfe);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_RX_SPACER_EN, 1);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_ONE_PKT_PER_Q, 1);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_PUSH_EN, 1);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_DIS_NON_IP_EV, 1);

 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_SOFT_EVT_EN, 1);

 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_PREF_THRESHOLD, 2);

 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_PREF_WD_TMR, 0x3fffff);

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0)
  EF4_SET_OWORD_FIELD(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
 ef4_writeo(efx, &temp, FR_AZ_TX_RESERVED);

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  EF4_POPULATE_OWORD_4(temp,

         FRF_BZ_TX_PACE_SB_NOT_AF, 0x15,
         FRF_BZ_TX_PACE_SB_AF, 0xb,
         FRF_BZ_TX_PACE_FB_BASE, 0,


         FRF_BZ_TX_PACE_BIN_TH,
         FFE_BZ_TX_PACE_RESERVED);
  ef4_writeo(efx, &temp, FR_BZ_TX_PACE);
 }
}
