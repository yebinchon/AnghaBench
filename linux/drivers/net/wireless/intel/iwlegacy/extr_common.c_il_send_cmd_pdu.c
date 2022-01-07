
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct il_priv {int dummy; } ;
struct il_host_cmd {void const* data; int len; int id; } ;


 int il_send_cmd_sync (struct il_priv*,struct il_host_cmd*) ;

int
il_send_cmd_pdu(struct il_priv *il, u8 id, u16 len, const void *data)
{
 struct il_host_cmd cmd = {
  .id = id,
  .len = len,
  .data = data,
 };

 return il_send_cmd_sync(il, &cmd);
}
