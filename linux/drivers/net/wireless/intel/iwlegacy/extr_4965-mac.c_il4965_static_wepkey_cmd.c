
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct il_wep_key {int dummy; } ;
struct il_wep_cmd {int num_keys; int global_key_type; TYPE_1__* key; } ;
struct TYPE_6__ {TYPE_2__* wep_keys; } ;
struct il_priv {TYPE_3__ _4965; } ;
struct il_host_cmd {size_t len; int flags; struct il_wep_cmd* data; int id; } ;
struct TYPE_5__ {int key; scalar_t__ key_size; } ;
struct TYPE_4__ {int key_idx; int key_offset; int * key; scalar_t__ key_size; } ;


 int CMD_SYNC ;
 int C_WEPKEY ;
 int WEP_INVALID_OFFSET ;
 int WEP_KEYS_MAX ;
 int WEP_KEY_WEP_TYPE ;
 int il_send_cmd (struct il_priv*,struct il_host_cmd*) ;
 int memcpy (int *,int ,scalar_t__) ;
 int memset (struct il_wep_cmd*,int ,size_t) ;
 int might_sleep () ;

__attribute__((used)) static int
il4965_static_wepkey_cmd(struct il_priv *il, bool send_if_empty)
{
 int i;
 u8 buff[sizeof(struct il_wep_cmd) +
  sizeof(struct il_wep_key) * WEP_KEYS_MAX];
 struct il_wep_cmd *wep_cmd = (struct il_wep_cmd *)buff;
 size_t cmd_size = sizeof(struct il_wep_cmd);
 struct il_host_cmd cmd = {
  .id = C_WEPKEY,
  .data = wep_cmd,
  .flags = CMD_SYNC,
 };
 bool not_empty = 0;

 might_sleep();

 memset(wep_cmd, 0,
        cmd_size + (sizeof(struct il_wep_key) * WEP_KEYS_MAX));

 for (i = 0; i < WEP_KEYS_MAX; i++) {
  u8 key_size = il->_4965.wep_keys[i].key_size;

  wep_cmd->key[i].key_idx = i;
  if (key_size) {
   wep_cmd->key[i].key_offset = i;
   not_empty = 1;
  } else
   wep_cmd->key[i].key_offset = WEP_INVALID_OFFSET;

  wep_cmd->key[i].key_size = key_size;
  memcpy(&wep_cmd->key[i].key[3], il->_4965.wep_keys[i].key, key_size);
 }

 wep_cmd->global_key_type = WEP_KEY_WEP_TYPE;
 wep_cmd->num_keys = WEP_KEYS_MAX;

 cmd_size += sizeof(struct il_wep_key) * WEP_KEYS_MAX;
 cmd.len = cmd_size;

 if (not_empty || send_if_empty)
  return il_send_cmd(il, &cmd);
 else
  return 0;
}
