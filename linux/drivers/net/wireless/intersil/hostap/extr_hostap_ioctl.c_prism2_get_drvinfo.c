
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct ethtool_drvinfo {int fw_version; int driver; } ;
struct TYPE_2__ {int sta_fw_ver; } ;
typedef TYPE_1__ local_info_t ;


 struct hostap_interface* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void prism2_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 strlcpy(info->driver, "hostap", sizeof(info->driver));
 snprintf(info->fw_version, sizeof(info->fw_version),
   "%d.%d.%d", (local->sta_fw_ver >> 16) & 0xff,
   (local->sta_fw_ver >> 8) & 0xff,
   local->sta_fw_ver & 0xff);
}
