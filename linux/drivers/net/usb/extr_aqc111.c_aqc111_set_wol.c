
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {struct aqc111_data* driver_priv; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct aqc111_data {int wol_flags; } ;


 int AQ_WOL_FLAG_MP ;
 int EINVAL ;
 int WAKE_MAGIC ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aqc111_set_wol(struct net_device *net,
     struct ethtool_wolinfo *wolinfo)
{
 struct usbnet *dev = netdev_priv(net);
 struct aqc111_data *aqc111_data = dev->driver_priv;

 if (wolinfo->wolopts & ~WAKE_MAGIC)
  return -EINVAL;

 aqc111_data->wol_flags = 0;
 if (wolinfo->wolopts & WAKE_MAGIC)
  aqc111_data->wol_flags |= AQ_WOL_FLAG_MP;

 return 0;
}
