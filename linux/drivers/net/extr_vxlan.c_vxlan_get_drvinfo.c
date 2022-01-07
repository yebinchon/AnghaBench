
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int driver; int version; } ;


 char* VXLAN_VERSION ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void vxlan_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->version, VXLAN_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->driver, "vxlan", sizeof(drvinfo->driver));
}
