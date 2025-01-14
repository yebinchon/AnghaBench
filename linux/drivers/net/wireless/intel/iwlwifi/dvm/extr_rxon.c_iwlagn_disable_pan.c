
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_rxon_context {int rxon_cmd; } ;
struct iwl_rxon_cmd {int dev_type; int filter_flags; } ;
struct iwl_priv {int notif_wait; } ;
struct iwl_notification_wait {int dummy; } ;
typedef int __le32 ;


 int ARRAY_SIZE (int const*) ;
 int HZ ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;

 int RXON_DEV_TYPE_P2P ;
 int RXON_FILTER_ASSOC_MSK ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_rxon_cmd*) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int *,int *) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int ) ;

__attribute__((used)) static int iwlagn_disable_pan(struct iwl_priv *priv,
         struct iwl_rxon_context *ctx,
         struct iwl_rxon_cmd *send)
{
 struct iwl_notification_wait disable_wait;
 __le32 old_filter = send->filter_flags;
 u8 old_dev_type = send->dev_type;
 int ret;
 static const u16 deactivate_cmd[] = {
  128
 };

 iwl_init_notification_wait(&priv->notif_wait, &disable_wait,
       deactivate_cmd, ARRAY_SIZE(deactivate_cmd),
       ((void*)0), ((void*)0));

 send->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 send->dev_type = RXON_DEV_TYPE_P2P;
 ret = iwl_dvm_send_cmd_pdu(priv, ctx->rxon_cmd,
    0, sizeof(*send), send);

 send->filter_flags = old_filter;
 send->dev_type = old_dev_type;

 if (ret) {
  IWL_ERR(priv, "Error disabling PAN (%d)\n", ret);
  iwl_remove_notification(&priv->notif_wait, &disable_wait);
 } else {
  ret = iwl_wait_notification(&priv->notif_wait,
         &disable_wait, HZ);
  if (ret)
   IWL_ERR(priv, "Timed out waiting for PAN disable\n");
 }

 return ret;
}
