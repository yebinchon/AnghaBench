
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int fw_version; int version; int driver; } ;


 int BOND_ABI_VERSION ;
 int DRV_NAME ;
 int DRV_VERSION ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void bond_ethtool_get_drvinfo(struct net_device *bond_dev,
         struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRV_VERSION, sizeof(drvinfo->version));
 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version), "%d",
   BOND_ABI_VERSION);
}
