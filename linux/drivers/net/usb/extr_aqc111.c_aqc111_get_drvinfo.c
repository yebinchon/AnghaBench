
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {struct aqc111_data* driver_priv; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int eedump_len; int regdump_len; int fw_version; int driver; } ;
struct TYPE_2__ {int major; int minor; int rev; } ;
struct aqc111_data {TYPE_1__ fw_ver; } ;


 int DRIVER_NAME ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,int ,int) ;
 int usbnet_get_drvinfo (struct net_device*,struct ethtool_drvinfo*) ;

__attribute__((used)) static void aqc111_get_drvinfo(struct net_device *net,
          struct ethtool_drvinfo *info)
{
 struct usbnet *dev = netdev_priv(net);
 struct aqc111_data *aqc111_data = dev->driver_priv;


 usbnet_get_drvinfo(net, info);
 strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 snprintf(info->fw_version, sizeof(info->fw_version), "%u.%u.%u",
   aqc111_data->fw_ver.major,
   aqc111_data->fw_ver.minor,
   aqc111_data->fw_ver.rev);
 info->eedump_len = 0x00;
 info->regdump_len = 0x00;
}
