
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int ieee_802_1x; int wpa; int auth_algs; int drop_unencrypted; int tkip_countermeasures; } ;
typedef TYPE_1__ local_info_t ;


 int EOPNOTSUPP ;




 int IW_AUTH_INDEX ;





 struct hostap_interface* netdev_priv (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_giwauth(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *data, char *extra)
{
 struct hostap_interface *iface = netdev_priv(dev);
 local_info_t *local = iface->local;

 switch (data->flags & IW_AUTH_INDEX) {
 case 128:
 case 134:
 case 135:
 case 132:




  return -EOPNOTSUPP;
 case 130:
  data->value = local->tkip_countermeasures;
  break;
 case 133:
  data->value = local->drop_unencrypted;
  break;
 case 136:
  data->value = local->auth_algs;
  break;
 case 129:
  data->value = local->wpa;
  break;
 case 131:
  data->value = local->ieee_802_1x;
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
