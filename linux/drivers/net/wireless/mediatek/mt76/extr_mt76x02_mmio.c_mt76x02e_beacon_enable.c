
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int dummy; } ;


 int MT_INT_PRE_TBTT ;
 int MT_INT_TBTT ;
 int MT_INT_TIMER_EN ;
 int MT_INT_TIMER_EN_PRE_TBTT_EN ;
 int mt76_rmw_field (struct mt76x02_dev*,int ,int ,int) ;
 int mt76x02_irq_disable (struct mt76x02_dev*,int) ;
 int mt76x02_irq_enable (struct mt76x02_dev*,int) ;

__attribute__((used)) static void mt76x02e_beacon_enable(struct mt76x02_dev *dev, bool en)
{
 mt76_rmw_field(dev, MT_INT_TIMER_EN, MT_INT_TIMER_EN_PRE_TBTT_EN, en);
 if (en)
  mt76x02_irq_enable(dev, MT_INT_PRE_TBTT | MT_INT_TBTT);
 else
  mt76x02_irq_disable(dev, MT_INT_PRE_TBTT | MT_INT_TBTT);
}
