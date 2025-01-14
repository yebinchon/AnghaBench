
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct mwifiex_private {size_t wep_key_curr_index; TYPE_1__* wep_key; int adapter; } ;
struct mwifiex_ie_types_header {int dummy; } ;
struct mwifiex_ie_type_key_param_set {size_t* key; void* key_len; void* key_info; void* key_type_id; void* length; void* type; } ;
struct TYPE_2__ {int key_length; int key_material; } ;


 int ERROR ;
 size_t HostCmd_WEP_KEY_INDEX_MASK ;
 int KEYPARAMSET_WEP_FIXED_LEN ;
 int KEY_ENABLED ;
 int KEY_MCAST ;
 int KEY_TYPE_ID_WEP ;
 int KEY_UNICAST ;
 size_t NUM_WEP_KEYS ;
 int TLV_TYPE_KEY_MATERIAL ;
 int WLAN_KEY_LEN_WEP104 ;
 int WLAN_KEY_LEN_WEP40 ;
 void* cpu_to_le16 (int) ;
 int memmove (int*,int ,int) ;
 int mwifiex_dbg (int ,int ,char*,size_t,int) ;

__attribute__((used)) static int
mwifiex_set_keyparamset_wep(struct mwifiex_private *priv,
       struct mwifiex_ie_type_key_param_set *key_param_set,
       u16 *key_param_len)
{
 int cur_key_param_len;
 u8 i;


 for (i = 0; i < NUM_WEP_KEYS; i++) {
  if ((priv->wep_key[i].key_length == WLAN_KEY_LEN_WEP40) ||
      (priv->wep_key[i].key_length == WLAN_KEY_LEN_WEP104)) {
   key_param_set->type =
    cpu_to_le16(TLV_TYPE_KEY_MATERIAL);


   key_param_set->length = cpu_to_le16((u16)
     (priv->wep_key[i].
      key_length +
      8));
   key_param_set->key_type_id =
    cpu_to_le16(KEY_TYPE_ID_WEP);
   key_param_set->key_info =
    cpu_to_le16(KEY_ENABLED | KEY_UNICAST |
         KEY_MCAST);
   key_param_set->key_len =
    cpu_to_le16(priv->wep_key[i].key_length);

   key_param_set->key[0] = i;

   if (i ==
       (priv->
        wep_key_curr_index & HostCmd_WEP_KEY_INDEX_MASK))
    key_param_set->key[1] = 1;
   else
    key_param_set->key[1] = 0;
   memmove(&key_param_set->key[2],
    priv->wep_key[i].key_material,
    priv->wep_key[i].key_length);

   cur_key_param_len = priv->wep_key[i].key_length +
    8 +
    sizeof(struct mwifiex_ie_types_header);
   *key_param_len += (u16) cur_key_param_len;
   key_param_set =
    (struct mwifiex_ie_type_key_param_set *)
      ((u8 *)key_param_set +
       cur_key_param_len);
  } else if (!priv->wep_key[i].key_length) {
   continue;
  } else {
   mwifiex_dbg(priv->adapter, ERROR,
        "key%d Length = %d is incorrect\n",
        (i + 1), priv->wep_key[i].key_length);
   return -1;
  }
 }

 return 0;
}
