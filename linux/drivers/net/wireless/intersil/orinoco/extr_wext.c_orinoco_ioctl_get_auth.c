
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_param {long flags; int value; } ;
union iwreq_data {struct iw_param param; } ;
struct orinoco_private {int wpa_enabled; int wep_restrict; int tkip_cm_active; int key_mgmt; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EOPNOTSUPP ;

 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_AUTH_ALG_SHARED_KEY ;
 long IW_AUTH_INDEX ;



 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_get_auth(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 struct iw_param *param = &wrqu->param;
 unsigned long flags;
 int ret = 0;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 switch (param->flags & IW_AUTH_INDEX) {
 case 130:
  param->value = priv->key_mgmt;
  break;

 case 129:
  param->value = priv->tkip_cm_active;
  break;

 case 131:
  if (priv->wep_restrict)
   param->value = IW_AUTH_ALG_SHARED_KEY;
  else
   param->value = IW_AUTH_ALG_OPEN_SYSTEM;
  break;

 case 128:
  param->value = priv->wpa_enabled;
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 orinoco_unlock(priv, &flags);
 return ret;
}
