
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int generic_elem_len; int * generic_elem; } ;
typedef TYPE_1__ local_info_t ;


 int E2BIG ;
 int memcpy (char*,int *,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_giwgenie(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *extra)
{
 struct hostap_interface *iface = netdev_priv(dev);
 local_info_t *local = iface->local;
 int len = local->generic_elem_len - 2;

 if (len <= 0 || local->generic_elem == ((void*)0)) {
  data->length = 0;
  return 0;
 }

 if (data->length < len)
  return -E2BIG;

 data->length = len;
 memcpy(extra, local->generic_elem + 2, len);

 return 0;
}
