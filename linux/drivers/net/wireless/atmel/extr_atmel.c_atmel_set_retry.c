
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; int disabled; } ;
struct atmel_private {int short_retry; int long_retry; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_retry(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *vwrq,
      char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 if (!vwrq->disabled && (vwrq->flags & IW_RETRY_LIMIT)) {
  if (vwrq->flags & IW_RETRY_LONG)
   priv->long_retry = vwrq->value;
  else if (vwrq->flags & IW_RETRY_SHORT)
   priv->short_retry = vwrq->value;
  else {

   priv->long_retry = vwrq->value;
   priv->short_retry = vwrq->value;
  }
  return -EINPROGRESS;
 }

 return -EINVAL;
}
