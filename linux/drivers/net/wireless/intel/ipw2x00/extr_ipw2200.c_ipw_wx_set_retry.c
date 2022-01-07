
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
typedef void* u8 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {void* long_retry_limit; void* short_retry_limit; int mutex; } ;


 int EINVAL ;
 int IPW_DEBUG_WX (char*,void*,void*) ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int ipw_send_retry_limit (struct ipw_priv*,void*,void*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_retry(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);

 if (wrqu->retry.flags & IW_RETRY_LIFETIME || wrqu->retry.disabled)
  return -EINVAL;

 if (!(wrqu->retry.flags & IW_RETRY_LIMIT))
  return 0;

 if (wrqu->retry.value < 0 || wrqu->retry.value >= 255)
  return -EINVAL;

 mutex_lock(&priv->mutex);
 if (wrqu->retry.flags & IW_RETRY_SHORT)
  priv->short_retry_limit = (u8) wrqu->retry.value;
 else if (wrqu->retry.flags & IW_RETRY_LONG)
  priv->long_retry_limit = (u8) wrqu->retry.value;
 else {
  priv->short_retry_limit = (u8) wrqu->retry.value;
  priv->long_retry_limit = (u8) wrqu->retry.value;
 }

 ipw_send_retry_limit(priv, priv->short_retry_limit,
        priv->long_retry_limit);
 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("SET retry limit -> short:%d long:%d\n",
       priv->short_retry_limit, priv->long_retry_limit);
 return 0;
}
