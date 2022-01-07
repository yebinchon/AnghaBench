
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_nvm_data {int valid_rx_ant; int valid_tx_ant; int radio_cfg_pnum; int radio_cfg_dash; int radio_cfg_step; int radio_cfg_type; } ;
struct iwl_cfg {scalar_t__ nvm_type; } ;


 int EXT_NVM_RF_CFG_DASH_MSK (int ) ;
 int EXT_NVM_RF_CFG_FLAVOR_MSK (int ) ;
 int EXT_NVM_RF_CFG_RX_ANT_MSK (int ) ;
 int EXT_NVM_RF_CFG_STEP_MSK (int ) ;
 int EXT_NVM_RF_CFG_TX_ANT_MSK (int ) ;
 int EXT_NVM_RF_CFG_TYPE_MSK (int ) ;
 scalar_t__ IWL_NVM_EXT ;
 int NVM_RF_CFG_DASH_MSK (int ) ;
 int NVM_RF_CFG_PNUM_MSK (int ) ;
 int NVM_RF_CFG_STEP_MSK (int ) ;
 int NVM_RF_CFG_TYPE_MSK (int ) ;

__attribute__((used)) static void iwl_set_radio_cfg(const struct iwl_cfg *cfg,
         struct iwl_nvm_data *data,
         u32 radio_cfg)
{
 if (cfg->nvm_type != IWL_NVM_EXT) {
  data->radio_cfg_type = NVM_RF_CFG_TYPE_MSK(radio_cfg);
  data->radio_cfg_step = NVM_RF_CFG_STEP_MSK(radio_cfg);
  data->radio_cfg_dash = NVM_RF_CFG_DASH_MSK(radio_cfg);
  data->radio_cfg_pnum = NVM_RF_CFG_PNUM_MSK(radio_cfg);
  return;
 }


 data->radio_cfg_type = EXT_NVM_RF_CFG_TYPE_MSK(radio_cfg);
 data->radio_cfg_step = EXT_NVM_RF_CFG_STEP_MSK(radio_cfg);
 data->radio_cfg_dash = EXT_NVM_RF_CFG_DASH_MSK(radio_cfg);
 data->radio_cfg_pnum = EXT_NVM_RF_CFG_FLAVOR_MSK(radio_cfg);
 data->valid_tx_ant = EXT_NVM_RF_CFG_TX_ANT_MSK(radio_cfg);
 data->valid_rx_ant = EXT_NVM_RF_CFG_RX_ANT_MSK(radio_cfg);
}
