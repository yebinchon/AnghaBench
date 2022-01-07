
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int bitratemode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_get_bitratemode (int,int) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setrate(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rrq,
     char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int ratemode;
 int bitrate;
 unsigned long flags;




 if (rrq->value == -1)
  bitrate = 110;
 else {
  if (rrq->value % 100000)
   return -EINVAL;
  bitrate = rrq->value / 100000;
 }

 ratemode = orinoco_get_bitratemode(bitrate, !rrq->fixed);

 if (ratemode == -1)
  return -EINVAL;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;
 priv->bitratemode = ratemode;
 orinoco_unlock(priv, &flags);

 return -EINPROGRESS;
}
