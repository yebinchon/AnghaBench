
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {int name_set; TYPE_1__* func; int name; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* reset_port ) (struct net_device*) ;} ;


 int EINVAL ;
 int HFA384X_RID_CNFOWNNAME ;
 scalar_t__ hostap_set_string (struct net_device*,int ,int ) ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_siwnickn(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *nickname)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 memset(local->name, 0, sizeof(local->name));
 memcpy(local->name, nickname, data->length);
 local->name_set = 1;

 if (hostap_set_string(dev, HFA384X_RID_CNFOWNNAME, local->name) ||
     local->func->reset_port(dev))
  return -EINVAL;

 return 0;
}
