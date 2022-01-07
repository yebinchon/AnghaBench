
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int DRV_NAME ;
 int UTS_RELEASE ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void team_ethtool_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, UTS_RELEASE, sizeof(drvinfo->version));
}
