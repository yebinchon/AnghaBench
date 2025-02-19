
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {size_t sta_id; } ;
struct iwl_host_cmd {int flags; int data; int len; int id; } ;
struct TYPE_2__ {int used; } ;


 int CMD_ASYNC ;
 int EINVAL ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*,size_t) ;
 size_t IWL_INVALID_STATION ;
 int IWL_STA_DRIVER_ACTIVE ;
 int IWL_STA_UCODE_INPROGRESS ;
 int REPLY_TX_LINK_QUALITY_CMD ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ is_lq_table_valid (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_link_quality_cmd*) ;
 int iwl_dump_lq_cmd (struct iwl_priv*,struct iwl_link_quality_cmd*) ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_send_lq_cmd(struct iwl_priv *priv, struct iwl_rxon_context *ctx,
      struct iwl_link_quality_cmd *lq, u8 flags, bool init)
{
 int ret = 0;
 struct iwl_host_cmd cmd = {
  .id = REPLY_TX_LINK_QUALITY_CMD,
  .len = { sizeof(struct iwl_link_quality_cmd), },
  .flags = flags,
  .data = { lq, },
 };

 if (WARN_ON(lq->sta_id == IWL_INVALID_STATION))
  return -EINVAL;


 spin_lock_bh(&priv->sta_lock);
 if (!(priv->stations[lq->sta_id].used & IWL_STA_DRIVER_ACTIVE)) {
  spin_unlock_bh(&priv->sta_lock);
  return -EINVAL;
 }
 spin_unlock_bh(&priv->sta_lock);

 iwl_dump_lq_cmd(priv, lq);
 if (WARN_ON(init && (cmd.flags & CMD_ASYNC)))
  return -EINVAL;

 if (is_lq_table_valid(priv, ctx, lq))
  ret = iwl_dvm_send_cmd(priv, &cmd);
 else
  ret = -EINVAL;

 if (cmd.flags & CMD_ASYNC)
  return ret;

 if (init) {
  IWL_DEBUG_INFO(priv, "init LQ command complete, "
          "clearing sta addition status for sta %d\n",
          lq->sta_id);
  spin_lock_bh(&priv->sta_lock);
  priv->stations[lq->sta_id].used &= ~IWL_STA_UCODE_INPROGRESS;
  spin_unlock_bh(&priv->sta_lock);
 }
 return ret;
}
