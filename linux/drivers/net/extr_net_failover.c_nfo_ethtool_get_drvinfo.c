
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int FAILOVER_NAME ;
 int FAILOVER_VERSION ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void nfo_ethtool_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, FAILOVER_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, FAILOVER_VERSION, sizeof(drvinfo->version));
}
