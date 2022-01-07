
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct TYPE_4__ {scalar_t__ region; struct cfg80211_chan_def chandef; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;
struct TYPE_3__ {int flags; } ;


 int DFS ;
 int IBI ;
 int IEEE80211_CHAN_RADAR ;
 int MT_BBP (int ,int) ;
 int MT_INT_GPTIMER ;
 int MT_INT_TIMER_EN ;
 int MT_INT_TIMER_EN_GP_TIMER_EN ;
 scalar_t__ NL80211_DFS_UNSET ;
 int mt76_chip (TYPE_2__*) ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;
 int mt76x02_dfs_init_sw_detector (struct mt76x02_dev*) ;
 int mt76x02_dfs_set_bbp_params (struct mt76x02_dev*) ;
 int mt76x02_dfs_set_capture_mode_ctrl (struct mt76x02_dev*,int) ;
 int mt76x02_irq_disable (struct mt76x02_dev*,int ) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int ) ;

void mt76x02_dfs_init_params(struct mt76x02_dev *dev)
{
 struct cfg80211_chan_def *chandef = &dev->mt76.chandef;

 if ((chandef->chan->flags & IEEE80211_CHAN_RADAR) &&
     dev->mt76.region != NL80211_DFS_UNSET) {
  mt76x02_dfs_init_sw_detector(dev);
  mt76x02_dfs_set_bbp_params(dev);

  mt76x02_dfs_set_capture_mode_ctrl(dev, 1);

  mt76x02_irq_enable(dev, MT_INT_GPTIMER);
  mt76_rmw_field(dev, MT_INT_TIMER_EN,
          MT_INT_TIMER_EN_GP_TIMER_EN, 1);
 } else {

  mt76_wr(dev, MT_BBP(DFS, 0), 0);

  mt76_wr(dev, MT_BBP(DFS, 1), 0xf);
  if (mt76_chip(&dev->mt76) == 0x7610 ||
      mt76_chip(&dev->mt76) == 0x7630)
   mt76_wr(dev, MT_BBP(IBI, 11), 0xfde8081);
  else
   mt76_wr(dev, MT_BBP(IBI, 11), 0);

  mt76x02_irq_disable(dev, MT_INT_GPTIMER);
  mt76_rmw_field(dev, MT_INT_TIMER_EN,
          MT_INT_TIMER_EN_GP_TIMER_EN, 0);
 }
}
