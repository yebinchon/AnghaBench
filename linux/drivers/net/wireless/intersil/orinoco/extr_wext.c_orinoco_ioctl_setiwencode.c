
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orinoco_private {int tx_key; int encode_alg; int wep_restrict; TYPE_1__* keys; scalar_t__ has_wpa; int has_big_wep; int has_wep; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; scalar_t__ pointer; } ;
typedef enum orinoco_alg { ____Placeholder_orinoco_alg } orinoco_alg ;
struct TYPE_2__ {scalar_t__ key_len; } ;


 int E2BIG ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_INDEX ;
 int IW_ENCODE_OPEN ;
 int IW_ENCODE_RESTRICTED ;
 scalar_t__ LARGE_KEY_SIZE ;
 int ORINOCO_ALG_NONE ;
 scalar_t__ ORINOCO_ALG_TKIP ;
 int ORINOCO_ALG_WEP ;
 int ORINOCO_MAX_KEYS ;
 scalar_t__ SMALL_KEY_SIZE ;
 int __orinoco_hw_setup_wepkeys (struct orinoco_private*) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int orinoco_clear_tkip_key (struct orinoco_private*,int) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_set_key (struct orinoco_private*,int,int,char*,scalar_t__,int *,int ) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setiwencode(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *erq,
         char *keybuf)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int index = (erq->flags & IW_ENCODE_INDEX) - 1;
 int setindex = priv->tx_key;
 enum orinoco_alg encode_alg = priv->encode_alg;
 int restricted = priv->wep_restrict;
 int err = -EINPROGRESS;
 unsigned long flags;

 if (!priv->has_wep)
  return -EOPNOTSUPP;

 if (erq->pointer) {

  if (erq->length > LARGE_KEY_SIZE)
   return -E2BIG;

  if ((erq->length > SMALL_KEY_SIZE) && !priv->has_big_wep)
   return -E2BIG;
 }

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;


 if ((priv->has_wpa) && (priv->encode_alg == ORINOCO_ALG_TKIP))
  (void) orinoco_clear_tkip_key(priv, setindex);

 if (erq->length > 0) {
  if ((index < 0) || (index >= ORINOCO_MAX_KEYS))
   index = priv->tx_key;


  if (encode_alg != ORINOCO_ALG_WEP) {
   setindex = index;
   encode_alg = ORINOCO_ALG_WEP;
  }
 } else {



  if ((index < 0) || (index >= ORINOCO_MAX_KEYS)) {
   if ((index != -1) || (erq->flags == 0)) {
    err = -EINVAL;
    goto out;
   }
  } else {

   if (priv->keys[index].key_len == 0) {
    err = -EINVAL;
    goto out;
   }
   setindex = index;
  }
 }

 if (erq->flags & IW_ENCODE_DISABLED)
  encode_alg = ORINOCO_ALG_NONE;
 if (erq->flags & IW_ENCODE_OPEN)
  restricted = 0;
 if (erq->flags & IW_ENCODE_RESTRICTED)
  restricted = 1;

 if (erq->pointer && erq->length > 0) {
  err = orinoco_set_key(priv, index, ORINOCO_ALG_WEP, keybuf,
          erq->length, ((void*)0), 0);
 }
 priv->tx_key = setindex;


 if ((priv->encode_alg == encode_alg) &&
     (priv->wep_restrict == restricted) &&
     netif_carrier_ok(dev)) {
  err = __orinoco_hw_setup_wepkeys(priv);

  goto out;
 }

 priv->encode_alg = encode_alg;
 priv->wep_restrict = restricted;

 out:
 orinoco_unlock(priv, &flags);

 return err;
}
