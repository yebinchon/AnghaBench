
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct il_tfd {int dummy; } ;
struct TYPE_6__ {int max_txq_num; int scd_bc_tbls_size; int tfd_size; int beacon_time_tsf_bits; int * sens; int ct_kill_threshold; int valid_rx_ant; int valid_tx_ant; void* rx_chains_num; void* tx_chains_num; int rx_wrt_ptr_reg; int ht40_channel; int max_bsm_size; int max_inst_size; int max_data_size; int max_stations; int dma_chnl_num; int max_beacon_itrvl; void* rx_page_order; int max_rxq_log; int max_rxq_size; int bcast_id; } ;
struct il_priv {TYPE_3__ hw_params; TYPE_2__* cfg; } ;
struct il4965_scd_bc_tbl {int dummy; } ;
struct TYPE_5__ {int num_of_queues; int valid_rx_ant; int valid_tx_ant; TYPE_1__* mod_params; int sku; } ;
struct TYPE_4__ {scalar_t__ num_of_queues; scalar_t__ disable_11n; scalar_t__ amsdu_size_8K; } ;


 int BIT (int ) ;
 int BSM_SRAM_SIZE ;
 int CELSIUS_TO_KELVIN (int ) ;
 int CT_KILL_THRESHOLD_LEGACY ;
 int FH49_RSCSR_CHNL0_WPTR ;
 int FH49_TCSR_CHNL_NUM ;
 int IL4965_BROADCAST_ID ;
 int IL4965_EXT_BEACON_TIME_POS ;
 int IL4965_STATION_COUNT ;
 scalar_t__ IL49_NUM_QUEUES ;
 int IL49_RTC_DATA_SIZE ;
 int IL49_RTC_INST_SIZE ;
 int IL_MAX_UCODE_BEACON_INTERVAL ;
 scalar_t__ IL_MIN_NUM_QUEUES ;
 int IL_RX_BUF_SIZE_4K ;
 int IL_RX_BUF_SIZE_8K ;
 int IL_SKU_N ;
 int NL80211_BAND_5GHZ ;
 int RX_QUEUE_SIZE ;
 int RX_QUEUE_SIZE_LOG ;
 void* get_order (int ) ;
 void* il4965_num_of_ant (int ) ;
 int il4965_sensitivity ;

__attribute__((used)) static void
il4965_set_hw_params(struct il_priv *il)
{
 il->hw_params.bcast_id = IL4965_BROADCAST_ID;
 il->hw_params.max_rxq_size = RX_QUEUE_SIZE;
 il->hw_params.max_rxq_log = RX_QUEUE_SIZE_LOG;
 if (il->cfg->mod_params->amsdu_size_8K)
  il->hw_params.rx_page_order = get_order(IL_RX_BUF_SIZE_8K);
 else
  il->hw_params.rx_page_order = get_order(IL_RX_BUF_SIZE_4K);

 il->hw_params.max_beacon_itrvl = IL_MAX_UCODE_BEACON_INTERVAL;

 if (il->cfg->mod_params->disable_11n)
  il->cfg->sku &= ~IL_SKU_N;

 if (il->cfg->mod_params->num_of_queues >= IL_MIN_NUM_QUEUES &&
     il->cfg->mod_params->num_of_queues <= IL49_NUM_QUEUES)
  il->cfg->num_of_queues =
      il->cfg->mod_params->num_of_queues;

 il->hw_params.max_txq_num = il->cfg->num_of_queues;
 il->hw_params.dma_chnl_num = FH49_TCSR_CHNL_NUM;
 il->hw_params.scd_bc_tbls_size =
     il->cfg->num_of_queues *
     sizeof(struct il4965_scd_bc_tbl);

 il->hw_params.tfd_size = sizeof(struct il_tfd);
 il->hw_params.max_stations = IL4965_STATION_COUNT;
 il->hw_params.max_data_size = IL49_RTC_DATA_SIZE;
 il->hw_params.max_inst_size = IL49_RTC_INST_SIZE;
 il->hw_params.max_bsm_size = BSM_SRAM_SIZE;
 il->hw_params.ht40_channel = BIT(NL80211_BAND_5GHZ);

 il->hw_params.rx_wrt_ptr_reg = FH49_RSCSR_CHNL0_WPTR;

 il->hw_params.tx_chains_num = il4965_num_of_ant(il->cfg->valid_tx_ant);
 il->hw_params.rx_chains_num = il4965_num_of_ant(il->cfg->valid_rx_ant);
 il->hw_params.valid_tx_ant = il->cfg->valid_tx_ant;
 il->hw_params.valid_rx_ant = il->cfg->valid_rx_ant;

 il->hw_params.ct_kill_threshold =
    CELSIUS_TO_KELVIN(CT_KILL_THRESHOLD_LEGACY);

 il->hw_params.sens = &il4965_sensitivity;
 il->hw_params.beacon_time_tsf_bits = IL4965_EXT_BEACON_TIME_POS;
}
