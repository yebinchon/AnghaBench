
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76x02_dfs_pattern_detector {int dfs_tasklet; int last_sw_check; int seq_pool; int sequences; } ;
struct TYPE_2__ {int region; } ;
struct mt76x02_dev {TYPE_1__ mt76; struct mt76x02_dfs_pattern_detector dfs_pd; } ;


 int INIT_LIST_HEAD (int *) ;
 int NL80211_DFS_UNSET ;
 int jiffies ;
 int mt76x02_dfs_tasklet ;
 int tasklet_init (int *,int ,unsigned long) ;

void mt76x02_dfs_init_detector(struct mt76x02_dev *dev)
{
 struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

 INIT_LIST_HEAD(&dfs_pd->sequences);
 INIT_LIST_HEAD(&dfs_pd->seq_pool);
 dev->mt76.region = NL80211_DFS_UNSET;
 dfs_pd->last_sw_check = jiffies;
 tasklet_init(&dfs_pd->dfs_tasklet, mt76x02_dfs_tasklet,
       (unsigned long)dev);
}
