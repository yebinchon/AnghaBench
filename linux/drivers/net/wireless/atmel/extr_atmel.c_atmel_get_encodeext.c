
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_point {int length; int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {scalar_t__ key_len; int key; int alg; } ;
struct atmel_private {int default_key; scalar_t__ encryption_level; int * wep_keys; scalar_t__* wep_key_len; int wep_is_on; } ;


 int EINVAL ;
 int IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct iw_encode_ext*,int ,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_encodeext(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int idx, max_key_len;

 max_key_len = encoding->length - sizeof(*ext);
 if (max_key_len < 0)
  return -EINVAL;

 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if (idx < 1 || idx > 4)
   return -EINVAL;
  idx--;
 } else
  idx = priv->default_key;

 encoding->flags = idx + 1;
 memset(ext, 0, sizeof(*ext));

 if (!priv->wep_is_on) {
  ext->alg = IW_ENCODE_ALG_NONE;
  ext->key_len = 0;
  encoding->flags |= IW_ENCODE_DISABLED;
 } else {
  if (priv->encryption_level > 0)
   ext->alg = IW_ENCODE_ALG_WEP;
  else
   return -EINVAL;

  ext->key_len = priv->wep_key_len[idx];
  memcpy(ext->key, priv->wep_keys[idx], ext->key_len);
  encoding->flags |= IW_ENCODE_ENABLED;
 }

 return 0;
}
