
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ low_gain; int false_cca; scalar_t__ agc_gain_adjust; int agc_lowest_gain; } ;
struct mt76x02_dev {TYPE_1__ cal; } ;


 int FIELD_GET (int ,int ) ;
 int MT_RX_STAT_1 ;
 int MT_RX_STAT_1_CCA_ERRORS ;
 int mt76_rr (struct mt76x02_dev*,int ) ;

bool mt76x02_phy_adjust_vga_gain(struct mt76x02_dev *dev)
{
 u8 limit = dev->cal.low_gain > 0 ? 16 : 4;
 bool ret = 0;
 u32 false_cca;

 false_cca = FIELD_GET(MT_RX_STAT_1_CCA_ERRORS,
         mt76_rr(dev, MT_RX_STAT_1));
 dev->cal.false_cca = false_cca;
 if (false_cca > 800 && dev->cal.agc_gain_adjust < limit) {
  dev->cal.agc_gain_adjust += 2;
  ret = 1;
 } else if ((false_cca < 10 && dev->cal.agc_gain_adjust > 0) ||
     (dev->cal.agc_gain_adjust >= limit && false_cca < 500)) {
  dev->cal.agc_gain_adjust -= 2;
  ret = 1;
 }

 dev->cal.agc_lowest_gain = dev->cal.agc_gain_adjust >= limit;

 return ret;
}
