
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int rx_indir_table; } ;
typedef int ef4_oword_t ;


 int EF4_POPULATE_OWORD_1 (int ,int ,int ) ;
 scalar_t__ EF4_REV_FALCON_B0 ;
 int EF4_SET_OWORD_FIELD (int ,int ,int) ;
 scalar_t__ EF4_WORKAROUND_5129 (struct ef4_nic*) ;
 scalar_t__ EF4_WORKAROUND_5583 (struct ef4_nic*) ;
 scalar_t__ EF4_WORKAROUND_7244 (struct ef4_nic*) ;
 int FRF_AA_RX_ISCSI_DIS ;
 int FRF_AA_RX_NODESC_WAIT_DIS ;
 int FRF_AA_RX_SELF_RST_EN ;
 int FRF_AB_MEM_PERR_EN_TX_DATA ;
 int FRF_AB_ONCHIP_SRAM ;
 int FRF_AZ_TX_NO_EOP_DISC_EN ;
 int FRF_BZ_FLS_EVQ_ID ;
 int FRF_BZ_TCP_FULL_SRCH_LIMIT ;
 int FRF_BZ_TCP_WILD_SRCH_LIMIT ;
 int FRF_BZ_UDP_FULL_SRCH_LIMIT ;
 int FRF_BZ_UDP_WILD_SRCH_LIMIT ;
 int FR_AA_RX_SELF_RST ;
 int FR_AB_NIC_STAT ;
 int FR_AZ_CSR_SPARE ;
 int FR_AZ_TX_CFG ;
 int FR_BZ_DP_CTRL ;
 int FR_BZ_RX_FILTER_CTL ;
 int ef4_farch_init_common (struct ef4_nic*) ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;
 int ef4_reado (struct ef4_nic*,int *,int ) ;
 int ef4_writeo (struct ef4_nic*,int *,int ) ;
 int falcon_b0_rx_push_rss_config (struct ef4_nic*,int,int ) ;
 int falcon_init_rx_cfg (struct ef4_nic*) ;
 int falcon_reset_sram (struct ef4_nic*) ;

__attribute__((used)) static int falcon_init_nic(struct ef4_nic *efx)
{
 ef4_oword_t temp;
 int rc;


 ef4_reado(efx, &temp, FR_AB_NIC_STAT);
 EF4_SET_OWORD_FIELD(temp, FRF_AB_ONCHIP_SRAM, 1);
 ef4_writeo(efx, &temp, FR_AB_NIC_STAT);

 rc = falcon_reset_sram(efx);
 if (rc)
  return rc;




 if (EF4_WORKAROUND_5129(efx)) {
  ef4_reado(efx, &temp, FR_AZ_CSR_SPARE);
  EF4_SET_OWORD_FIELD(temp, FRF_AB_MEM_PERR_EN_TX_DATA, 0);
  ef4_writeo(efx, &temp, FR_AZ_CSR_SPARE);
 }

 if (EF4_WORKAROUND_7244(efx)) {
  ef4_reado(efx, &temp, FR_BZ_RX_FILTER_CTL);
  EF4_SET_OWORD_FIELD(temp, FRF_BZ_UDP_FULL_SRCH_LIMIT, 8);
  EF4_SET_OWORD_FIELD(temp, FRF_BZ_UDP_WILD_SRCH_LIMIT, 8);
  EF4_SET_OWORD_FIELD(temp, FRF_BZ_TCP_FULL_SRCH_LIMIT, 8);
  EF4_SET_OWORD_FIELD(temp, FRF_BZ_TCP_WILD_SRCH_LIMIT, 8);
  ef4_writeo(efx, &temp, FR_BZ_RX_FILTER_CTL);
 }





 ef4_reado(efx, &temp, FR_AA_RX_SELF_RST);
 EF4_SET_OWORD_FIELD(temp, FRF_AA_RX_NODESC_WAIT_DIS, 1);
 EF4_SET_OWORD_FIELD(temp, FRF_AA_RX_SELF_RST_EN, 1);
 if (EF4_WORKAROUND_5583(efx))
  EF4_SET_OWORD_FIELD(temp, FRF_AA_RX_ISCSI_DIS, 1);
 ef4_writeo(efx, &temp, FR_AA_RX_SELF_RST);




 ef4_reado(efx, &temp, FR_AZ_TX_CFG);
 EF4_SET_OWORD_FIELD(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
 ef4_writeo(efx, &temp, FR_AZ_TX_CFG);

 falcon_init_rx_cfg(efx);

 if (ef4_nic_rev(efx) >= EF4_REV_FALCON_B0) {
  falcon_b0_rx_push_rss_config(efx, 0, efx->rx_indir_table);


  EF4_POPULATE_OWORD_1(temp, FRF_BZ_FLS_EVQ_ID, 0);
  ef4_writeo(efx, &temp, FR_BZ_DP_CTRL);
 }

 ef4_farch_init_common(efx);

 return 0;
}
