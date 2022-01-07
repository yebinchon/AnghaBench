
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* CPMAC_VERSION ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void cpmac_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, "cpmac", sizeof(info->driver));
 strlcpy(info->version, CPMAC_VERSION, sizeof(info->version));
 snprintf(info->bus_info, sizeof(info->bus_info), "%s", "cpmac");
}
