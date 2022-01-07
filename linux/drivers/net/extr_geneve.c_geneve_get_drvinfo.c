
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; int version; } ;


 char* GENEVE_NETDEV_VER ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void geneve_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->version, GENEVE_NETDEV_VER, sizeof(drvinfo->version));
 strlcpy(drvinfo->driver, "geneve", sizeof(drvinfo->driver));
}
