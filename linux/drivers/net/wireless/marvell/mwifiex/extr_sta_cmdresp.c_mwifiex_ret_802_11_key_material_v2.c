
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int key; int key_len; } ;
struct TYPE_11__ {TYPE_2__ aes; } ;
struct TYPE_12__ {TYPE_3__ key_params; } ;
struct TYPE_13__ {TYPE_4__ key_param_set; } ;
struct mwifiex_private {int wpa_is_gtk_set; int scan_block; int port_open; TYPE_5__ aes_key_v2; int adapter; } ;
struct TYPE_14__ {int key; int key_len; } ;
struct TYPE_15__ {TYPE_6__ aes; } ;
struct TYPE_16__ {scalar_t__ key_type; TYPE_7__ key_params; int key_info; } ;
struct host_cmd_ds_802_11_key_material_v2 {TYPE_8__ key_param_set; int action; } ;
struct TYPE_9__ {struct host_cmd_ds_802_11_key_material_v2 key_material_v2; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;
typedef int __le16 ;


 int HostCmd_ACT_GEN_SET ;
 int INFO ;
 int KEY_MCAST ;
 scalar_t__ KEY_TYPE_ID_AES ;
 int WLAN_KEY_LEN_CCMP ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int ) ;
 int mwifiex_dbg (int ,int ,char*) ;

__attribute__((used)) static int mwifiex_ret_802_11_key_material_v2(struct mwifiex_private *priv,
           struct host_cmd_ds_command *resp)
{
 struct host_cmd_ds_802_11_key_material_v2 *key_v2;
 __le16 len;

 key_v2 = &resp->params.key_material_v2;
 if (le16_to_cpu(key_v2->action) == HostCmd_ACT_GEN_SET) {
  if ((le16_to_cpu(key_v2->key_param_set.key_info) & KEY_MCAST)) {
   mwifiex_dbg(priv->adapter, INFO, "info: key: GTK is set\n");
   priv->wpa_is_gtk_set = 1;
   priv->scan_block = 0;
   priv->port_open = 1;
  }
 }

 if (key_v2->key_param_set.key_type != KEY_TYPE_ID_AES)
  return 0;

 memset(priv->aes_key_v2.key_param_set.key_params.aes.key, 0,
        WLAN_KEY_LEN_CCMP);
 priv->aes_key_v2.key_param_set.key_params.aes.key_len =
    key_v2->key_param_set.key_params.aes.key_len;
 len = priv->aes_key_v2.key_param_set.key_params.aes.key_len;
 memcpy(priv->aes_key_v2.key_param_set.key_params.aes.key,
        key_v2->key_param_set.key_params.aes.key, le16_to_cpu(len));

 return 0;
}
