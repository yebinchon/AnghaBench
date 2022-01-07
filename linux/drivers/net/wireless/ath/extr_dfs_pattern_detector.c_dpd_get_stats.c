
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_pattern_detector {int dummy; } ;
struct ath_dfs_pool_stats {int dummy; } ;


 struct ath_dfs_pool_stats global_dfs_pool_stats ;

__attribute__((used)) static struct ath_dfs_pool_stats
dpd_get_stats(struct dfs_pattern_detector *dpd)
{
 return global_dfs_pool_stats;
}
