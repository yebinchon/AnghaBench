
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int short_retry_limit; int long_retry_limit; } ;


 int EINVAL ;
 int IPW_DEBUG_WX (char*,int ) ;
 int IW_RETRY_LIFETIME ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int IW_RETRY_TYPE ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_retry(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);

 mutex_lock(&priv->mutex);
 wrqu->retry.disabled = 0;

 if ((wrqu->retry.flags & IW_RETRY_TYPE) == IW_RETRY_LIFETIME) {
  mutex_unlock(&priv->mutex);
  return -EINVAL;
 }

 if (wrqu->retry.flags & IW_RETRY_LONG) {
  wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
  wrqu->retry.value = priv->long_retry_limit;
 } else if (wrqu->retry.flags & IW_RETRY_SHORT) {
  wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
  wrqu->retry.value = priv->short_retry_limit;
 } else {
  wrqu->retry.flags = IW_RETRY_LIMIT;
  wrqu->retry.value = priv->short_retry_limit;
 }
 mutex_unlock(&priv->mutex);

 IPW_DEBUG_WX("GET retry -> %d\n", wrqu->retry.value);

 return 0;
}
