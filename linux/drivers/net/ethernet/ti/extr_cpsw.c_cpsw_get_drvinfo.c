
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct cpsw_common {int dev; } ;


 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;
 int strlcpy (int ,char*,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void cpsw_get_drvinfo(struct net_device *ndev,
        struct ethtool_drvinfo *info)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);
 struct platform_device *pdev = to_platform_device(cpsw->dev);

 strlcpy(info->driver, "cpsw", sizeof(info->driver));
 strlcpy(info->version, "1.0", sizeof(info->version));
 strlcpy(info->bus_info, pdev->name, sizeof(info->bus_info));
}
