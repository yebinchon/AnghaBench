
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct hostap_interface {int type; TYPE_1__* local; } ;
struct TYPE_2__ {int iw_mode; } ;
typedef TYPE_1__ local_info_t ;
typedef int __u32 ;




 int IW_MODE_INFRA ;
 int IW_MODE_REPEAT ;
 struct hostap_interface* netdev_priv (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_giwmode(struct net_device *dev,
    struct iw_request_info *info,
    __u32 *mode, char *extra)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 switch (iface->type) {
 case 129:
  *mode = IW_MODE_INFRA;
  break;
 case 128:
  *mode = IW_MODE_REPEAT;
  break;
 default:
  *mode = local->iw_mode;
  break;
 }
 return 0;
}
