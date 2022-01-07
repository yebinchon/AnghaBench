
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ regdump_len; scalar_t__ eedump_len; int testinfo_len; int n_stats; int bus_info; int fw_version; int version; int driver; } ;
struct bnxt {int num_tests; int pdev; int fw_ver_str; } ;


 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 int bnxt_get_num_stats (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void bnxt_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *info)
{
 struct bnxt *bp = netdev_priv(dev);

 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
 strlcpy(info->fw_version, bp->fw_ver_str, sizeof(info->fw_version));
 strlcpy(info->bus_info, pci_name(bp->pdev), sizeof(info->bus_info));
 info->n_stats = bnxt_get_num_stats(bp);
 info->testinfo_len = bp->num_tests;

 info->eedump_len = 0;

 info->regdump_len = 0;
}
