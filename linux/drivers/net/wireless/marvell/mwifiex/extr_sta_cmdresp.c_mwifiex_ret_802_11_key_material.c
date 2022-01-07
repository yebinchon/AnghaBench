
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {TYPE_1__* adapter; } ;
struct host_cmd_ds_command {int dummy; } ;
struct TYPE_2__ {scalar_t__ key_api_major_ver; } ;


 scalar_t__ KEY_API_VER_MAJOR_V2 ;
 int mwifiex_ret_802_11_key_material_v1 (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_key_material_v2 (struct mwifiex_private*,struct host_cmd_ds_command*) ;

__attribute__((used)) static int mwifiex_ret_802_11_key_material(struct mwifiex_private *priv,
        struct host_cmd_ds_command *resp)
{
 if (priv->adapter->key_api_major_ver == KEY_API_VER_MAJOR_V2)
  return mwifiex_ret_802_11_key_material_v2(priv, resp);
 else
  return mwifiex_ret_802_11_key_material_v1(priv, resp);
}
