
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_stats_cmd {int configuration_flags; } ;
struct il_priv {int dummy; } ;


 int CMD_ASYNC ;
 int C_STATS ;
 int IL_STATS_CONF_CLEAR_STATS ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,struct il_stats_cmd*) ;
 int il_send_cmd_pdu_async (struct il_priv*,int ,int,struct il_stats_cmd*,int *) ;

int
il_send_stats_request(struct il_priv *il, u8 flags, bool clear)
{
 struct il_stats_cmd stats_cmd = {
  .configuration_flags = clear ? IL_STATS_CONF_CLEAR_STATS : 0,
 };

 if (flags & CMD_ASYNC)
  return il_send_cmd_pdu_async(il, C_STATS, sizeof(struct il_stats_cmd),
          &stats_cmd, ((void*)0));
 else
  return il_send_cmd_pdu(il, C_STATS, sizeof(struct il_stats_cmd),
           &stats_cmd);
}
