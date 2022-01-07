
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int desired_essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;


 int E2BIG ;
 int EBUSY ;
 int EINPROGRESS ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setessid(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *erq,
      char *essidbuf)
{
 struct orinoco_private *priv = ndev_priv(dev);
 unsigned long flags;






 if (erq->length > IW_ESSID_MAX_SIZE)
  return -E2BIG;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;


 memset(priv->desired_essid, 0, sizeof(priv->desired_essid));


 if (erq->flags)
  memcpy(priv->desired_essid, essidbuf, erq->length);

 orinoco_unlock(priv, &flags);

 return -EINPROGRESS;
}
