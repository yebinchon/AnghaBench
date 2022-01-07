
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int IPVLAN_DRV ;
 int IPV_DRV_VER ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ipvlan_ethtool_get_drvinfo(struct net_device *dev,
           struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, IPVLAN_DRV, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, IPV_DRV_VER, sizeof(drvinfo->version));
}
