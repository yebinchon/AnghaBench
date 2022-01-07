
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct i2400m {scalar_t__ fw_name; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int driver; } ;


 char* KBUILD_MODNAME ;
 char* dev_name (scalar_t__) ;
 struct i2400m* net_dev_to_i2400m (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void i2400m_get_drvinfo(struct net_device *net_dev,
          struct ethtool_drvinfo *info)
{
 struct i2400m *i2400m = net_dev_to_i2400m(net_dev);

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->fw_version, i2400m->fw_name ? : "",
  sizeof(info->fw_version));
 if (net_dev->dev.parent)
  strlcpy(info->bus_info, dev_name(net_dev->dev.parent),
   sizeof(info->bus_info));
}
