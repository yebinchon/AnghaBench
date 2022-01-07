
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int ed_strict_mode; int ed_time; scalar_t__ ed_strong_signal; scalar_t__ ed_monitor; } ;


 int MT_MIB_CTL ;
 int MT_MIB_CTL_ED_TIME ;
 int MT_MIB_STAT_ED ;
 int MT_RXTD (int) ;
 int MT_RXTD_8_LOWER_SIGNAL ;
 int ktime_get_boottime () ;
 int mt7603_edcca_set_strict (struct mt7603_dev*,int) ;
 int mt76_clear (struct mt7603_dev*,int ,int ) ;
 int mt76_rmw_field (struct mt7603_dev*,int ,int ,int) ;
 int mt76_rr (struct mt7603_dev*,int ) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;

void mt7603_init_edcca(struct mt7603_dev *dev)
{

 mt76_rmw_field(dev, MT_RXTD(8), MT_RXTD_8_LOWER_SIGNAL, 0x23);


 mt76_rr(dev, MT_MIB_STAT_ED);

 if (dev->ed_monitor)
  mt76_set(dev, MT_MIB_CTL, MT_MIB_CTL_ED_TIME);
 else
  mt76_clear(dev, MT_MIB_CTL, MT_MIB_CTL_ED_TIME);

 dev->ed_strict_mode = 0xff;
 dev->ed_strong_signal = 0;
 dev->ed_time = ktime_get_boottime();

 mt7603_edcca_set_strict(dev, 0);
}
