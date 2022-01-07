
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {TYPE_1__* fw; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int fw_version; } ;


 int IWL_ERR (struct iwl_priv*,char*,int ) ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int iwl_dump_nic_error_log (struct iwl_priv*) ;
 int iwl_dump_nic_event_log (struct iwl_priv*,int,int *) ;
 int iwlagn_fw_error (struct iwl_priv*,int) ;

__attribute__((used)) static void iwl_nic_error(struct iwl_op_mode *op_mode)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);

 IWL_ERR(priv, "Loaded firmware version: %s\n",
  priv->fw->fw_version);

 iwl_dump_nic_error_log(priv);
 iwl_dump_nic_event_log(priv, 0, ((void*)0));

 iwlagn_fw_error(priv, 0);
}
