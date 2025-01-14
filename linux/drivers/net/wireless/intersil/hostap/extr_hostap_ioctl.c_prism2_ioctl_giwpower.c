
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int flags; int value; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;
struct TYPE_3__ {scalar_t__ (* get_rid ) (struct net_device*,int ,int *,int,int) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HFA384X_RID_CNFMAXSLEEPDURATION ;
 int HFA384X_RID_CNFMULTICASTRECEIVE ;
 int HFA384X_RID_CNFPMENABLED ;
 int HFA384X_RID_CNFPMHOLDOVERDURATION ;
 int IW_POWER_ALL_R ;
 int IW_POWER_PERIOD ;
 int IW_POWER_TIMEOUT ;
 int IW_POWER_TYPE ;
 int IW_POWER_UNICAST_R ;
 int le16_to_cpu (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*,int ,int *,int,int) ;
 scalar_t__ stub2 (struct net_device*,int ,int *,int,int) ;
 scalar_t__ stub3 (struct net_device*,int ,int *,int,int) ;
 scalar_t__ stub4 (struct net_device*,int ,int *,int,int) ;

__attribute__((used)) static int prism2_ioctl_giwpower(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rrq, char *extra)
{



 struct hostap_interface *iface;
 local_info_t *local;
 __le16 enable, mcast;

 iface = netdev_priv(dev);
 local = iface->local;

 if (local->func->get_rid(dev, HFA384X_RID_CNFPMENABLED, &enable, 2, 1)
     < 0)
  return -EINVAL;

 if (!le16_to_cpu(enable)) {
  rrq->disabled = 1;
  return 0;
 }

 rrq->disabled = 0;

 if ((rrq->flags & IW_POWER_TYPE) == IW_POWER_TIMEOUT) {
  __le16 timeout;
  if (local->func->get_rid(dev,
      HFA384X_RID_CNFPMHOLDOVERDURATION,
      &timeout, 2, 1) < 0)
   return -EINVAL;

  rrq->flags = IW_POWER_TIMEOUT;
  rrq->value = le16_to_cpu(timeout) * 1024;
 } else {
  __le16 period;
  if (local->func->get_rid(dev, HFA384X_RID_CNFMAXSLEEPDURATION,
      &period, 2, 1) < 0)
   return -EINVAL;

  rrq->flags = IW_POWER_PERIOD;
  rrq->value = le16_to_cpu(period) * 1024;
 }

 if (local->func->get_rid(dev, HFA384X_RID_CNFMULTICASTRECEIVE, &mcast,
     2, 1) < 0)
  return -EINVAL;

 if (le16_to_cpu(mcast))
  rrq->flags |= IW_POWER_ALL_R;
 else
  rrq->flags |= IW_POWER_UNICAST_R;

 return 0;

}
