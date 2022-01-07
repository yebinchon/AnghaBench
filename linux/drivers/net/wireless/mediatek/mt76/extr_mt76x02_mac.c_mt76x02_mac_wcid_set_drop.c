
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mt76x02_dev {int dummy; } ;


 int MT_WCID_DROP (int ) ;
 int MT_WCID_DROP_MASK (int ) ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int mt76_wr (struct mt76x02_dev*,int ,int) ;

void mt76x02_mac_wcid_set_drop(struct mt76x02_dev *dev, u8 idx, bool drop)
{
 u32 val = mt76_rr(dev, MT_WCID_DROP(idx));
 u32 bit = MT_WCID_DROP_MASK(idx);


 if ((val & bit) != (bit * drop))
  mt76_wr(dev, MT_WCID_DROP(idx), (val & ~bit) | (bit * drop));
}
