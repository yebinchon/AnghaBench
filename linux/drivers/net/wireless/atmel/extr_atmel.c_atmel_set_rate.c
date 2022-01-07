
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ fixed; int value; } ;
struct atmel_private {int tx_rate; int auto_tx_rate; } ;


 int EINPROGRESS ;
 int EINVAL ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_rate(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *vwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 if (vwrq->fixed == 0) {
  priv->tx_rate = 3;
  priv->auto_tx_rate = 1;
 } else {
  priv->auto_tx_rate = 0;


  if ((vwrq->value < 4) && (vwrq->value >= 0)) {

   priv->tx_rate = vwrq->value;
  } else {

   switch (vwrq->value) {
   case 1000000:
    priv->tx_rate = 0;
    break;
   case 2000000:
    priv->tx_rate = 1;
    break;
   case 5500000:
    priv->tx_rate = 2;
    break;
   case 11000000:
    priv->tx_rate = 3;
    break;
   default:
    return -EINVAL;
   }
  }
 }

 return -EINPROGRESS;
}
