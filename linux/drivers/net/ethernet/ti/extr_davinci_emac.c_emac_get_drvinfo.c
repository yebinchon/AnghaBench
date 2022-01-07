
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int EMAC_MODULE_VERSION ;
 int emac_version_string ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void emac_get_drvinfo(struct net_device *ndev,
        struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, emac_version_string, sizeof(info->driver));
 strlcpy(info->version, EMAC_MODULE_VERSION, sizeof(info->version));
}
