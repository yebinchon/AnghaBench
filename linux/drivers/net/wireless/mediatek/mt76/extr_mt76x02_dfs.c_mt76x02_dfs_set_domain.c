
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76x02_dfs_pattern_detector {int dfs_tasklet; } ;
struct TYPE_2__ {int region; int mutex; } ;
struct mt76x02_dev {int ed_monitor; TYPE_1__ mt76; scalar_t__ ed_monitor_enabled; struct mt76x02_dfs_pattern_detector dfs_pd; } ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;


 int NL80211_DFS_ETSI ;
 int mt76x02_dfs_init_params (struct mt76x02_dev*) ;
 int mt76x02_edcca_init (struct mt76x02_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void
mt76x02_dfs_set_domain(struct mt76x02_dev *dev,
         enum nl80211_dfs_regions region)
{
 struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

 mutex_lock(&dev->mt76.mutex);
 if (dev->mt76.region != region) {
  tasklet_disable(&dfs_pd->dfs_tasklet);

  dev->ed_monitor = dev->ed_monitor_enabled &&
      region == NL80211_DFS_ETSI;
  mt76x02_edcca_init(dev);

  dev->mt76.region = region;
  mt76x02_dfs_init_params(dev);
  tasklet_enable(&dfs_pd->dfs_tasklet);
 }
 mutex_unlock(&dev->mt76.mutex);
}
