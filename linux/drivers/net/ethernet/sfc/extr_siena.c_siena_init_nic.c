
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ context_id; int rx_indir_table; } ;
struct efx_nic {TYPE_1__ rss_context; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_1 (int ,int ,int) ;
 int EFX_RX_USR_BUF_SIZE ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 int FRF_AZ_TX_NO_EOP_DISC_EN ;
 int FRF_BZ_FLS_EVQ_ID ;
 int FRF_BZ_RX_DESC_PUSH_EN ;
 int FRF_BZ_RX_HASH_ALG ;
 int FRF_BZ_RX_HASH_INSRT_HDR ;
 int FRF_BZ_RX_INGR_EN ;
 int FRF_BZ_RX_IP_HASH ;
 int FRF_BZ_RX_USR_BUF_SIZE ;
 int FRF_BZ_TX_FLUSH_MIN_LEN_EN ;
 int FRF_CZ_TX_FILTER_EN_BIT ;
 int FRF_CZ_USREV_DIS ;
 int FR_AZ_RX_CFG ;
 int FR_AZ_TX_CFG ;
 int FR_AZ_TX_RESERVED ;
 int FR_BZ_DP_CTRL ;
 int FR_CZ_USR_EV_CFG ;
 int efx_farch_init_common (struct efx_nic*) ;
 int efx_mcdi_handle_assertion (struct efx_nic*) ;
 int efx_mcdi_log_ctrl (struct efx_nic*,int,int,int ) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int siena_rx_push_rss_config (struct efx_nic*,int,int ,int *) ;

__attribute__((used)) static int siena_init_nic(struct efx_nic *efx)
{
 efx_oword_t temp;
 int rc;


 rc = efx_mcdi_handle_assertion(efx);
 if (rc)
  return rc;


 efx_reado(efx, &temp, FR_AZ_TX_RESERVED);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_TX_FLUSH_MIN_LEN_EN, 1);
 efx_writeo(efx, &temp, FR_AZ_TX_RESERVED);




 efx_reado(efx, &temp, FR_AZ_TX_CFG);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
 EFX_SET_OWORD_FIELD(temp, FRF_CZ_TX_FILTER_EN_BIT, 1);
 efx_writeo(efx, &temp, FR_AZ_TX_CFG);

 efx_reado(efx, &temp, FR_AZ_RX_CFG);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_DESC_PUSH_EN, 0);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_INGR_EN, 1);



 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_HASH_INSRT_HDR, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_HASH_ALG, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_IP_HASH, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_BZ_RX_USR_BUF_SIZE,
       EFX_RX_USR_BUF_SIZE >> 5);
 efx_writeo(efx, &temp, FR_AZ_RX_CFG);

 siena_rx_push_rss_config(efx, 0, efx->rss_context.rx_indir_table, ((void*)0));
 efx->rss_context.context_id = 0;


 rc = efx_mcdi_log_ctrl(efx, 1, 0, 0);
 if (rc)
  return rc;


 EFX_POPULATE_OWORD_1(temp, FRF_BZ_FLS_EVQ_ID, 0);
 efx_writeo(efx, &temp, FR_BZ_DP_CTRL);

 EFX_POPULATE_OWORD_1(temp, FRF_CZ_USREV_DIS, 1);
 efx_writeo(efx, &temp, FR_CZ_USR_EV_CFG);

 efx_farch_init_common(efx);
 return 0;
}
