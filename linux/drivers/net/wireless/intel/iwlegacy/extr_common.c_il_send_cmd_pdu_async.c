
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il_priv {int dummy; } ;
struct il_host_cmd {void const* data; void (* callback ) (struct il_priv*,struct il_device_cmd*,struct il_rx_pkt*) ;int flags; int len; int id; } ;


 int CMD_ASYNC ;
 int il_send_cmd_async (struct il_priv*,struct il_host_cmd*) ;

int
il_send_cmd_pdu_async(struct il_priv *il, u8 id, u16 len, const void *data,
        void (*callback) (struct il_priv *il,
     struct il_device_cmd *cmd,
     struct il_rx_pkt *pkt))
{
 struct il_host_cmd cmd = {
  .id = id,
  .len = len,
  .data = data,
 };

 cmd.flags |= CMD_ASYNC;
 cmd.callback = callback;

 return il_send_cmd_async(il, &cmd);
}
