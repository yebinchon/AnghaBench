
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct ath_rx_stats {int dummy; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct ath_rx_stats*,int *) ;
 int fops_phy_err ;

void ath9k_cmn_debug_phy_err(struct dentry *debugfs_phy,
        struct ath_rx_stats *rxstats)
{
 debugfs_create_file("phy_err", 0400, debugfs_phy, rxstats,
       &fops_phy_err);
}
