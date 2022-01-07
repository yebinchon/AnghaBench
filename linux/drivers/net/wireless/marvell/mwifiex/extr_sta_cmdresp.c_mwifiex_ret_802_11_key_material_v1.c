
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int key_len; int key; } ;
struct TYPE_8__ {TYPE_3__ key_param_set; } ;
struct mwifiex_private {int wpa_is_gtk_set; int scan_block; int port_open; TYPE_4__ aes_key; int adapter; } ;
struct TYPE_6__ {int key; int key_len; int key_info; } ;
struct host_cmd_ds_802_11_key_material {TYPE_2__ key_param_set; int action; } ;
struct TYPE_5__ {struct host_cmd_ds_802_11_key_material key_material; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 int HostCmd_ACT_GEN_SET ;
 int INFO ;
 int KEY_MCAST ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int mwifiex_dbg (int ,int ,char*) ;

__attribute__((used)) static int mwifiex_ret_802_11_key_material_v1(struct mwifiex_private *priv,
           struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_802_11_key_material *key =
      &resp->params.key_material;

 if (le16_to_cpu(key->action) == HostCmd_ACT_GEN_SET) {
  if ((le16_to_cpu(key->key_param_set.key_info) & KEY_MCAST)) {
   mwifiex_dbg(priv->adapter, INFO,
        "info: key: GTK is set\n");
   priv->wpa_is_gtk_set = 1;
   priv->scan_block = 0;
   priv->port_open = 1;
  }
 }

 memset(priv->aes_key.key_param_set.key, 0,
        sizeof(key->key_param_set.key));
 priv->aes_key.key_param_set.key_len = key->key_param_set.key_len;
 memcpy(priv->aes_key.key_param_set.key, key->key_param_set.key,
        le16_to_cpu(priv->aes_key.key_param_set.key_len));

 return 0;
}
