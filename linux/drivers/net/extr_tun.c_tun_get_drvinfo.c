
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int flags; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;


 int TUN_TYPE_MASK ;
 struct tun_struct* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void tun_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct tun_struct *tun = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));

 switch (tun->flags & TUN_TYPE_MASK) {
 case 128:
  strlcpy(info->bus_info, "tun", sizeof(info->bus_info));
  break;
 case 129:
  strlcpy(info->bus_info, "tap", sizeof(info->bus_info));
  break;
 }
}
