
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int region; int mutex; } ;
struct mt76x02_dev {int ed_monitor_enabled; int ed_monitor; TYPE_1__ mt76; } ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;


 int NL80211_DFS_ETSI ;
 int mt76x02_edcca_init (struct mt76x02_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt76_edcca_set(void *data, u64 val)
{
 struct mt76x02_dev *dev = data;
 enum nl80211_dfs_regions region = dev->mt76.region;

 mutex_lock(&dev->mt76.mutex);

 dev->ed_monitor_enabled = !!val;
 dev->ed_monitor = dev->ed_monitor_enabled &&
     region == NL80211_DFS_ETSI;
 mt76x02_edcca_init(dev);

 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
