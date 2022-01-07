
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct net_device {int name; } ;
struct libipw_security {int flags; int enabled; int encrypt; int active_key; scalar_t__* key_sizes; int level; int * encode_alg; int * keys; } ;
struct TYPE_2__ {int tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct libipw_device {scalar_t__ iw_mode; int (* set_security ) (struct net_device*,struct libipw_security*) ;TYPE_1__ crypt_info; scalar_t__ host_encrypt_msdu; scalar_t__ host_decrypt; scalar_t__ host_encrypt; int host_mc_decrypt; struct net_device* dev; } ;
struct lib80211_crypto_ops {scalar_t__ (* set_key ) (int ,scalar_t__,int ,int *) ;int * (* init ) (int) ;int owner; } ;
struct lib80211_crypt_data {int * priv; struct lib80211_crypto_ops* ops; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {int ext_flags; int alg; scalar_t__ key_len; int key; int rx_seq; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int IW_ENCODE_ALG_NONE ;


 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_EXT_GROUP_KEY ;
 int IW_ENCODE_EXT_SET_TX_KEY ;
 int IW_ENCODE_INDEX ;
 scalar_t__ IW_MODE_INFRA ;
 int LIBIPW_DEBUG_WX (char*,int ,...) ;
 int SEC_ACTIVE_KEY ;
 int SEC_ALG_CCMP ;
 int SEC_ALG_TKIP ;
 int SEC_ALG_WEP ;
 int SEC_ENABLED ;
 int SEC_ENCRYPT ;
 int SEC_LEVEL ;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int SEC_LEVEL_2 ;
 int SEC_LEVEL_3 ;
 int WEP_KEYS ;
 int kfree (struct lib80211_crypt_data*) ;
 struct lib80211_crypt_data* kzalloc (int,int ) ;
 int lib80211_crypt_delayed_deinit (TYPE_1__*,struct lib80211_crypt_data**) ;
 struct lib80211_crypto_ops* lib80211_get_crypto_ops (char const*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int request_module (char const*) ;
 int * stub1 (int) ;
 scalar_t__ stub2 (int ,scalar_t__,int ,int *) ;
 int stub3 (struct net_device*,struct libipw_security*) ;
 scalar_t__ try_module_get (int ) ;

int libipw_wx_set_encodeext(struct libipw_device *ieee,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct net_device *dev = ieee->dev;
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int i, idx, ret = 0;
 int group_key = 0;
 const char *alg, *module;
 struct lib80211_crypto_ops *ops;
 struct lib80211_crypt_data **crypt;

 struct libipw_security sec = {
  .flags = 0,
 };

 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if (idx < 1 || idx > WEP_KEYS)
   return -EINVAL;
  idx--;
 } else
  idx = ieee->crypt_info.tx_keyidx;

 if (ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY) {
  crypt = &ieee->crypt_info.crypt[idx];
  group_key = 1;
 } else {

  if (idx != 0 && ext->alg != 128)
   return -EINVAL;
  if (ieee->iw_mode == IW_MODE_INFRA)
   crypt = &ieee->crypt_info.crypt[idx];
  else
   return -EINVAL;
 }

 sec.flags |= SEC_ENABLED | SEC_ENCRYPT;
 if ((encoding->flags & IW_ENCODE_DISABLED) ||
     ext->alg == IW_ENCODE_ALG_NONE) {
  if (*crypt)
   lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);

  for (i = 0; i < WEP_KEYS; i++)
   if (ieee->crypt_info.crypt[i] != ((void*)0))
    break;

  if (i == WEP_KEYS) {
   sec.enabled = 0;
   sec.encrypt = 0;
   sec.level = SEC_LEVEL_0;
   sec.flags |= SEC_LEVEL;
  }
  goto done;
 }

 sec.enabled = 1;
 sec.encrypt = 1;

 if (group_key ? !ieee->host_mc_decrypt :
     !(ieee->host_encrypt || ieee->host_decrypt ||
       ieee->host_encrypt_msdu))
  goto skip_host_crypt;

 switch (ext->alg) {
 case 128:
  alg = "WEP";
  module = "lib80211_crypt_wep";
  break;
 case 129:
  alg = "TKIP";
  module = "lib80211_crypt_tkip";
  break;
 case 130:
  alg = "CCMP";
  module = "lib80211_crypt_ccmp";
  break;
 default:
  LIBIPW_DEBUG_WX("%s: unknown crypto alg %d\n",
       dev->name, ext->alg);
  ret = -EINVAL;
  goto done;
 }

 ops = lib80211_get_crypto_ops(alg);
 if (ops == ((void*)0)) {
  request_module(module);
  ops = lib80211_get_crypto_ops(alg);
 }
 if (ops == ((void*)0)) {
  LIBIPW_DEBUG_WX("%s: unknown crypto alg %d\n",
       dev->name, ext->alg);
  ret = -EINVAL;
  goto done;
 }

 if (*crypt == ((void*)0) || (*crypt)->ops != ops) {
  struct lib80211_crypt_data *new_crypt;

  lib80211_crypt_delayed_deinit(&ieee->crypt_info, crypt);

  new_crypt = kzalloc(sizeof(*new_crypt), GFP_KERNEL);
  if (new_crypt == ((void*)0)) {
   ret = -ENOMEM;
   goto done;
  }
  new_crypt->ops = ops;
  if (new_crypt->ops && try_module_get(new_crypt->ops->owner))
   new_crypt->priv = new_crypt->ops->init(idx);
  if (new_crypt->priv == ((void*)0)) {
   kfree(new_crypt);
   ret = -EINVAL;
   goto done;
  }
  *crypt = new_crypt;
 }

 if (ext->key_len > 0 && (*crypt)->ops->set_key &&
     (*crypt)->ops->set_key(ext->key, ext->key_len, ext->rx_seq,
       (*crypt)->priv) < 0) {
  LIBIPW_DEBUG_WX("%s: key setting failed\n", dev->name);
  ret = -EINVAL;
  goto done;
 }

      skip_host_crypt:
 if (ext->ext_flags & IW_ENCODE_EXT_SET_TX_KEY) {
  ieee->crypt_info.tx_keyidx = idx;
  sec.active_key = idx;
  sec.flags |= SEC_ACTIVE_KEY;
 }

 if (ext->alg != IW_ENCODE_ALG_NONE) {
  memcpy(sec.keys[idx], ext->key, ext->key_len);
  sec.key_sizes[idx] = ext->key_len;
  sec.flags |= (1 << idx);
  if (ext->alg == 128) {
   sec.encode_alg[idx] = SEC_ALG_WEP;
   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_1;
  } else if (ext->alg == 129) {
   sec.encode_alg[idx] = SEC_ALG_TKIP;
   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_2;
  } else if (ext->alg == 130) {
   sec.encode_alg[idx] = SEC_ALG_CCMP;
   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_3;
  }

  if (group_key)
   sec.flags &= ~SEC_LEVEL;
 }
      done:
 if (ieee->set_security)
  ieee->set_security(dev, &sec);

 return ret;
}
