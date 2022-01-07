
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ region; int mutex; } ;
struct mt7603_dev {int ed_monitor_enabled; int ed_monitor; TYPE_1__ mt76; } ;


 scalar_t__ NL80211_DFS_ETSI ;
 int mt7603_init_edcca (struct mt7603_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
mt7603_edcca_set(void *data, u64 val)
{
 struct mt7603_dev *dev = data;

 mutex_lock(&dev->mt76.mutex);

 dev->ed_monitor_enabled = !!val;
 dev->ed_monitor = dev->ed_monitor_enabled &&
     dev->mt76.region == NL80211_DFS_ETSI;
 mt7603_init_edcca(dev);

 mutex_unlock(&dev->mt76.mutex);

 return 0;
}
