
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_sensitivity_data {int dummy; } ;
struct iwl_priv {int * enhance_sensitivity_tbl; int * sensitivity_tbl; TYPE_1__* lib; struct iwl_sensitivity_data sensitivity_data; } ;
struct iwl_host_cmd {int data; int flags; int len; int id; } ;
struct iwl_enhance_sensitivity_cmd {int * enhance_table; int control; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ hd_v2; } ;


 int CMD_ASYNC ;
 int ENHANCE_HD_TABLE_ENTRIES ;
 int HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1 ;
 int HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2 ;
 size_t HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX ;
 int HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 ;
 int HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 ;
 size_t HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX ;
 int HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1 ;
 int HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2 ;
 size_t HD_CCK_NON_SQUARE_DET_SLOPE_INDEX ;
 int HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 ;
 int HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 ;
 size_t HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX ;
 int HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1 ;
 int HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2 ;
 size_t HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX ;
 int HD_INA_NON_SQUARE_DET_CCK_DATA_V1 ;
 int HD_INA_NON_SQUARE_DET_CCK_DATA_V2 ;
 size_t HD_INA_NON_SQUARE_DET_CCK_INDEX ;
 int HD_INA_NON_SQUARE_DET_OFDM_DATA_V1 ;
 int HD_INA_NON_SQUARE_DET_OFDM_DATA_V2 ;
 size_t HD_INA_NON_SQUARE_DET_OFDM_INDEX ;
 int HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1 ;
 int HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2 ;
 size_t HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX ;
 int HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 ;
 int HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 ;
 size_t HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX ;
 int HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1 ;
 int HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2 ;
 size_t HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX ;
 int HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 ;
 int HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 ;
 size_t HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX ;
 int HD_TABLE_SIZE ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*) ;
 int SENSITIVITY_CMD ;
 int SENSITIVITY_CMD_CONTROL_WORK_TABLE ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_prepare_legacy_sensitivity_tbl (struct iwl_priv*,struct iwl_sensitivity_data*,int *) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct iwl_enhance_sensitivity_cmd*,int ,int) ;

__attribute__((used)) static int iwl_enhance_sensitivity_write(struct iwl_priv *priv)
{
 struct iwl_enhance_sensitivity_cmd cmd;
 struct iwl_sensitivity_data *data = ((void*)0);
 struct iwl_host_cmd cmd_out = {
  .id = SENSITIVITY_CMD,
  .len = { sizeof(struct iwl_enhance_sensitivity_cmd), },
  .flags = CMD_ASYNC,
  .data = { &cmd, },
 };

 data = &(priv->sensitivity_data);

 memset(&cmd, 0, sizeof(cmd));

 iwl_prepare_legacy_sensitivity_tbl(priv, data, &cmd.enhance_table[0]);

 if (priv->lib->hd_v2) {
  cmd.enhance_table[HD_INA_NON_SQUARE_DET_OFDM_INDEX] =
   HD_INA_NON_SQUARE_DET_OFDM_DATA_V2;
  cmd.enhance_table[HD_INA_NON_SQUARE_DET_CCK_INDEX] =
   HD_INA_NON_SQUARE_DET_CCK_DATA_V2;
  cmd.enhance_table[HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX] =
   HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX] =
   HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX] =
   HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX] =
   HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX] =
   HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX] =
   HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX] =
   HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_SLOPE_INDEX] =
   HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX] =
   HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2;
 } else {
  cmd.enhance_table[HD_INA_NON_SQUARE_DET_OFDM_INDEX] =
   HD_INA_NON_SQUARE_DET_OFDM_DATA_V1;
  cmd.enhance_table[HD_INA_NON_SQUARE_DET_CCK_INDEX] =
   HD_INA_NON_SQUARE_DET_CCK_DATA_V1;
  cmd.enhance_table[HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX] =
   HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX] =
   HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX] =
   HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX] =
   HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1;
  cmd.enhance_table[HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX] =
   HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX] =
   HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX] =
   HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_SLOPE_INDEX] =
   HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1;
  cmd.enhance_table[HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX] =
   HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1;
 }


 cmd.control = SENSITIVITY_CMD_CONTROL_WORK_TABLE;


 if (!memcmp(&cmd.enhance_table[0], &(priv->sensitivity_tbl[0]),
      sizeof(u16)*HD_TABLE_SIZE) &&
     !memcmp(&cmd.enhance_table[HD_INA_NON_SQUARE_DET_OFDM_INDEX],
      &(priv->enhance_sensitivity_tbl[0]),
      sizeof(u16)*ENHANCE_HD_TABLE_ENTRIES)) {
  IWL_DEBUG_CALIB(priv, "No change in SENSITIVITY_CMD\n");
  return 0;
 }


 memcpy(&(priv->sensitivity_tbl[0]), &(cmd.enhance_table[0]),
        sizeof(u16)*HD_TABLE_SIZE);
 memcpy(&(priv->enhance_sensitivity_tbl[0]),
        &(cmd.enhance_table[HD_INA_NON_SQUARE_DET_OFDM_INDEX]),
        sizeof(u16)*ENHANCE_HD_TABLE_ENTRIES);

 return iwl_dvm_send_cmd(priv, &cmd_out);
}
