
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mac_work; int mutex; int state; int survey_time; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int MT7615_WATCHDOG_TIME ;
 int MT76_RESET ;
 int MT_MIB_SDR16 (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int ktime_get_boottime () ;
 int mt7615_dfs_check_channel (struct mt7615_dev*) ;
 int mt7615_dfs_init_radar_detector (struct mt7615_dev*) ;
 int mt7615_mac_cca_stats_reset (struct mt7615_dev*) ;
 int mt7615_mcu_set_channel (struct mt7615_dev*) ;
 int mt76_hw (struct mt7615_dev*) ;
 int mt76_rr (struct mt7615_dev*,int ) ;
 int mt76_set_channel (TYPE_1__*) ;
 int mt76_txq_schedule_all (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mt7615_set_channel(struct mt7615_dev *dev)
{
 int ret;

 cancel_delayed_work_sync(&dev->mt76.mac_work);

 mutex_lock(&dev->mt76.mutex);
 set_bit(MT76_RESET, &dev->mt76.state);

 mt7615_dfs_check_channel(dev);

 mt76_set_channel(&dev->mt76);

 ret = mt7615_mcu_set_channel(dev);
 if (ret)
  goto out;

 ret = mt7615_dfs_init_radar_detector(dev);
 mt7615_mac_cca_stats_reset(dev);
 dev->mt76.survey_time = ktime_get_boottime();

 mt76_rr(dev, MT_MIB_SDR16(0));

out:
 clear_bit(MT76_RESET, &dev->mt76.state);
 mutex_unlock(&dev->mt76.mutex);

 mt76_txq_schedule_all(&dev->mt76);
 ieee80211_queue_delayed_work(mt76_hw(dev), &dev->mt76.mac_work,
         MT7615_WATCHDOG_TIME);
 return ret;
}
