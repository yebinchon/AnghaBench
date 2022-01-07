
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct mwifiex_ds_encrypt_key {int dummy; } ;
struct host_cmd_ds_command {int dummy; } ;
struct TYPE_2__ {scalar_t__ key_api_major_ver; } ;


 scalar_t__ KEY_API_VER_MAJOR_V2 ;
 int mwifiex_cmd_802_11_key_material_v1 (struct mwifiex_private*,struct host_cmd_ds_command*,int ,int ,struct mwifiex_ds_encrypt_key*) ;
 int mwifiex_cmd_802_11_key_material_v2 (struct mwifiex_private*,struct host_cmd_ds_command*,int ,int ,struct mwifiex_ds_encrypt_key*) ;

__attribute__((used)) static int
mwifiex_cmd_802_11_key_material(struct mwifiex_private *priv,
    struct host_cmd_ds_command *cmd,
    u16 cmd_action, u32 cmd_oid,
    struct mwifiex_ds_encrypt_key *enc_key)
{
 if (priv->adapter->key_api_major_ver == KEY_API_VER_MAJOR_V2)
  return mwifiex_cmd_802_11_key_material_v2(priv, cmd,
         cmd_action, cmd_oid,
         enc_key);

 else
  return mwifiex_cmd_802_11_key_material_v1(priv, cmd,
         cmd_action, cmd_oid,
         enc_key);
}
