
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int qos_flags; } ;
struct TYPE_5__ {TYPE_3__ def_qos_parm; scalar_t__ qos_active; } ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct iwl_rxon_context {TYPE_2__ qos_data; int qos_cmd; TYPE_1__ ht; int is_active; } ;
struct iwl_qosparam_cmd {int dummy; } ;
struct iwl_priv {int dummy; } ;


 int IWL_DEBUG_INFO (struct iwl_priv*,char*,scalar_t__,int ) ;
 int IWL_DEBUG_QUIET_RFKILL (struct iwl_priv*,char*) ;
 int QOS_PARAM_FLG_TGN_MSK ;
 int QOS_PARAM_FLG_UPDATE_EDCA_MSK ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,TYPE_3__*) ;

__attribute__((used)) static void iwlagn_update_qos(struct iwl_priv *priv,
         struct iwl_rxon_context *ctx)
{
 int ret;

 if (!ctx->is_active)
  return;

 ctx->qos_data.def_qos_parm.qos_flags = 0;

 if (ctx->qos_data.qos_active)
  ctx->qos_data.def_qos_parm.qos_flags |=
   QOS_PARAM_FLG_UPDATE_EDCA_MSK;

 if (ctx->ht.enabled)
  ctx->qos_data.def_qos_parm.qos_flags |= QOS_PARAM_FLG_TGN_MSK;

 IWL_DEBUG_INFO(priv, "send QoS cmd with Qos active=%d FLAGS=0x%X\n",
        ctx->qos_data.qos_active,
        ctx->qos_data.def_qos_parm.qos_flags);

 ret = iwl_dvm_send_cmd_pdu(priv, ctx->qos_cmd, 0,
          sizeof(struct iwl_qosparam_cmd),
          &ctx->qos_data.def_qos_parm);
 if (ret)
  IWL_DEBUG_QUIET_RFKILL(priv, "Failed to update QoS\n");
}
