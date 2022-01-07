
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_sensitivity_data {int dummy; } ;
struct iwl_sensitivity_cmd {int * table; int control; } ;
struct iwl_priv {int * sensitivity_tbl; struct iwl_sensitivity_data sensitivity_data; } ;
struct iwl_host_cmd {int data; int flags; int len; int id; } ;
typedef int cmd ;


 int CMD_ASYNC ;
 int HD_TABLE_SIZE ;
 int IWL_DEBUG_CALIB (struct iwl_priv*,char*) ;
 int SENSITIVITY_CMD ;
 int SENSITIVITY_CMD_CONTROL_WORK_TABLE ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_prepare_legacy_sensitivity_tbl (struct iwl_priv*,struct iwl_sensitivity_data*,int *) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct iwl_sensitivity_cmd*,int ,int) ;

__attribute__((used)) static int iwl_sensitivity_write(struct iwl_priv *priv)
{
 struct iwl_sensitivity_cmd cmd;
 struct iwl_sensitivity_data *data = ((void*)0);
 struct iwl_host_cmd cmd_out = {
  .id = SENSITIVITY_CMD,
  .len = { sizeof(struct iwl_sensitivity_cmd), },
  .flags = CMD_ASYNC,
  .data = { &cmd, },
 };

 data = &(priv->sensitivity_data);

 memset(&cmd, 0, sizeof(cmd));

 iwl_prepare_legacy_sensitivity_tbl(priv, data, &cmd.table[0]);


 cmd.control = SENSITIVITY_CMD_CONTROL_WORK_TABLE;


 if (!memcmp(&cmd.table[0], &(priv->sensitivity_tbl[0]),
      sizeof(u16)*HD_TABLE_SIZE)) {
  IWL_DEBUG_CALIB(priv, "No change in SENSITIVITY_CMD\n");
  return 0;
 }


 memcpy(&(priv->sensitivity_tbl[0]), &(cmd.table[0]),
        sizeof(u16)*HD_TABLE_SIZE);

 return iwl_dvm_send_cmd(priv, &cmd_out);
}
