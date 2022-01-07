
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ disabled; } ;
struct atmel_private {int power_mode; } ;


 int EINPROGRESS ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_power(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *vwrq,
      char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 priv->power_mode = vwrq->disabled ? 0 : 1;
 return -EINPROGRESS;
}
