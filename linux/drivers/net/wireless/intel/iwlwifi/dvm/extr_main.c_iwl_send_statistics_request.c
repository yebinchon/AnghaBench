
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_statistics_cmd {int configuration_flags; } ;
struct iwl_priv {int dummy; } ;


 int CMD_ASYNC ;
 int IWL_STATS_CONF_CLEAR_STATS ;
 int REPLY_STATISTICS_CMD ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int,int,struct iwl_statistics_cmd*) ;

int iwl_send_statistics_request(struct iwl_priv *priv, u8 flags, bool clear)
{
 struct iwl_statistics_cmd statistics_cmd = {
  .configuration_flags =
   clear ? IWL_STATS_CONF_CLEAR_STATS : 0,
 };

 if (flags & CMD_ASYNC)
  return iwl_dvm_send_cmd_pdu(priv, REPLY_STATISTICS_CMD,
     CMD_ASYNC,
     sizeof(struct iwl_statistics_cmd),
     &statistics_cmd);
 else
  return iwl_dvm_send_cmd_pdu(priv, REPLY_STATISTICS_CMD, 0,
     sizeof(struct iwl_statistics_cmd),
     &statistics_cmd);
}
