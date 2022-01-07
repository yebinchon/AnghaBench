
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* cmd ) (struct net_device*,int ,int,int *,int *) ;} ;


 int EOPNOTSUPP ;
 int HFA384X_CMDCODE_INQUIRE ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*,int ,int,int *,int *) ;

__attribute__((used)) static int prism2_ioctl_priv_inquire(struct net_device *dev, int *i)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 if (local->func->cmd(dev, HFA384X_CMDCODE_INQUIRE, *i, ((void*)0), ((void*)0)))
  return -EOPNOTSUPP;

 return 0;
}
