
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct atmel_private {int channel; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ atmel_validate_channel (struct atmel_private*,int) ;
 int ieee80211_frequency_to_channel (int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_freq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *fwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 int rc = -EINPROGRESS;


 if (fwrq->e == 1) {
  int f = fwrq->m / 100000;


  fwrq->e = 0;
  fwrq->m = ieee80211_frequency_to_channel(f);
 }

 if (fwrq->m < 0 || fwrq->m > 1000 || fwrq->e > 0)
  rc = -EOPNOTSUPP;
 else {
  int channel = fwrq->m;
  if (atmel_validate_channel(priv, channel) == 0) {
   priv->channel = channel;
  } else {
   rc = -EINVAL;
  }
 }
 return rc;
}
