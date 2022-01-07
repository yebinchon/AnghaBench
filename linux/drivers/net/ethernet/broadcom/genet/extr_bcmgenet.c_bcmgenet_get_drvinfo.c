
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void bcmgenet_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, "bcmgenet", sizeof(info->driver));
 strlcpy(info->version, "v2.0", sizeof(info->version));
}
