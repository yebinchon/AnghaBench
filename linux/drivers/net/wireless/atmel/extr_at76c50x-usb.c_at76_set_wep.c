
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mib_mac_wep {int encryption_level; int exclude_unencrypted; size_t wep_default_key_id; int wep_default_keyvalue; scalar_t__ privacy_invoked; } ;
struct TYPE_4__ {struct mib_mac_wep wep_mib; } ;
struct TYPE_6__ {int size; scalar_t__ index; int type; TYPE_1__ data; } ;
struct at76_priv {scalar_t__* wep_keys_len; size_t wep_key_id; TYPE_2__* hw; TYPE_3__ mib_buf; int wep_keys; scalar_t__ wep_enabled; } ;
struct TYPE_5__ {int wiphy; } ;


 int MIB_MAC_WEP ;
 scalar_t__ WEP_SMALL_KEY_LEN ;
 int at76_set_mib (struct at76_priv*,TYPE_3__*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mib_mac_wep*,int ,int) ;
 int wiphy_err (int ,char*,int) ;

__attribute__((used)) static int at76_set_wep(struct at76_priv *priv)
{
 int ret = 0;
 struct mib_mac_wep *mib_data = &priv->mib_buf.data.wep_mib;

 priv->mib_buf.type = MIB_MAC_WEP;
 priv->mib_buf.size = sizeof(struct mib_mac_wep);
 priv->mib_buf.index = 0;

 memset(mib_data, 0, sizeof(*mib_data));

 if (priv->wep_enabled) {
  if (priv->wep_keys_len[priv->wep_key_id] > WEP_SMALL_KEY_LEN)
   mib_data->encryption_level = 2;
  else
   mib_data->encryption_level = 1;


  mib_data->exclude_unencrypted = 1;
 } else {
  mib_data->exclude_unencrypted = 0;
  mib_data->encryption_level = 0;
 }

 mib_data->privacy_invoked = priv->wep_enabled;
 mib_data->wep_default_key_id = priv->wep_key_id;
 memcpy(mib_data->wep_default_keyvalue, priv->wep_keys,
        sizeof(priv->wep_keys));

 ret = at76_set_mib(priv, &priv->mib_buf);

 if (ret < 0)
  wiphy_err(priv->hw->wiphy,
     "set_mib (wep) failed: %d\n", ret);

 return ret;
}
