
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int rxon_cmd; } ;
struct iwl_rxon_cmd {int filter_flags; } ;
struct iwl_priv {int dummy; } ;
typedef int __le32 ;


 int RXON_FILTER_ASSOC_MSK ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_rxon_cmd*) ;

__attribute__((used)) static int iwlagn_disconn_pan(struct iwl_priv *priv,
         struct iwl_rxon_context *ctx,
         struct iwl_rxon_cmd *send)
{
 __le32 old_filter = send->filter_flags;
 int ret;

 send->filter_flags &= ~RXON_FILTER_ASSOC_MSK;
 ret = iwl_dvm_send_cmd_pdu(priv, ctx->rxon_cmd, 0,
    sizeof(*send), send);

 send->filter_flags = old_filter;

 return ret;
}
