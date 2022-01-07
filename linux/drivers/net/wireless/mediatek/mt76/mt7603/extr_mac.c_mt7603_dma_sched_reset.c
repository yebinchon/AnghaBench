
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int MT_SCH_4 ;
 int MT_SCH_4_RESET ;
 int is_mt7628 (struct mt7603_dev*) ;
 int mt76_clear (struct mt7603_dev*,int ,int ) ;
 int mt76_set (struct mt7603_dev*,int ,int ) ;

__attribute__((used)) static void mt7603_dma_sched_reset(struct mt7603_dev *dev)
{
 if (!is_mt7628(dev))
  return;

 mt76_set(dev, MT_SCH_4, MT_SCH_4_RESET);
 mt76_clear(dev, MT_SCH_4, MT_SCH_4_RESET);
}
