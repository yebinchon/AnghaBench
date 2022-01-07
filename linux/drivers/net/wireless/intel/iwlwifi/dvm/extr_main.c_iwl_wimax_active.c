
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int status; } ;
struct iwl_op_mode {int dummy; } ;


 int IWL_ERR (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int STATUS_READY ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void iwl_wimax_active(struct iwl_op_mode *op_mode)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);

 clear_bit(STATUS_READY, &priv->status);
 IWL_ERR(priv, "RF is used by WiMAX\n");
}
