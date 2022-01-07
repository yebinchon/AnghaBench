
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int disabled; int fixed; } ;
struct atmel_private {int rts_threshold; } ;


 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_rts(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *vwrq,
    char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 vwrq->value = priv->rts_threshold;
 vwrq->disabled = (vwrq->value >= 2347);
 vwrq->fixed = 1;

 return 0;
}
