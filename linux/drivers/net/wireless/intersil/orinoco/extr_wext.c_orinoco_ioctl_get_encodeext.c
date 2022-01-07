
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int length; int flags; } ;
union iwreq_data {struct iw_point encoding; } ;
struct orinoco_private {int tx_key; int encode_alg; TYPE_1__* keys; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_encode_ext {void* key_len; int key; int alg; } ;
struct TYPE_2__ {int key; int key_len; } ;


 int EBUSY ;
 int EINVAL ;
 int IW_ENCODE_ALG_NONE ;
 int IW_ENCODE_ALG_TKIP ;
 int IW_ENCODE_ALG_WEP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_INDEX ;



 int memcpy (int ,int ,void*) ;
 int memset (struct iw_encode_ext*,int ,int) ;
 void* min (int ,int) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_get_encodeext(struct net_device *dev,
           struct iw_request_info *info,
           union iwreq_data *wrqu,
           char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct iw_point *encoding = &wrqu->encoding;
 struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 int idx, max_key_len;
 unsigned long flags;
 int err;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 err = -EINVAL;
 max_key_len = encoding->length - sizeof(*ext);
 if (max_key_len < 0)
  goto out;

 idx = encoding->flags & IW_ENCODE_INDEX;
 if (idx) {
  if ((idx < 1) || (idx > 4))
   goto out;
  idx--;
 } else
  idx = priv->tx_key;

 encoding->flags = idx + 1;
 memset(ext, 0, sizeof(*ext));

 switch (priv->encode_alg) {
 case 130:
  ext->alg = IW_ENCODE_ALG_NONE;
  ext->key_len = 0;
  encoding->flags |= IW_ENCODE_DISABLED;
  break;
 case 128:
  ext->alg = IW_ENCODE_ALG_WEP;
  ext->key_len = min(priv->keys[idx].key_len, max_key_len);
  memcpy(ext->key, priv->keys[idx].key, ext->key_len);
  encoding->flags |= IW_ENCODE_ENABLED;
  break;
 case 129:
  ext->alg = IW_ENCODE_ALG_TKIP;
  ext->key_len = min(priv->keys[idx].key_len, max_key_len);
  memcpy(ext->key, priv->keys[idx].key, ext->key_len);
  encoding->flags |= IW_ENCODE_ENABLED;
  break;
 }

 err = 0;
 out:
 orinoco_unlock(priv, &flags);

 return err;
}
