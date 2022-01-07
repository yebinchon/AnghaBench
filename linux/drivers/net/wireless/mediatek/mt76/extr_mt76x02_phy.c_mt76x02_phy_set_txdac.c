
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chainmask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;


 int MT_BBP (int ,int) ;
 int TXBE ;
 int mt76_clear (struct mt76x02_dev*,int ,int) ;
 int mt76_set (struct mt76x02_dev*,int ,int) ;

void mt76x02_phy_set_txdac(struct mt76x02_dev *dev)
{
 int txpath;

 txpath = (dev->mt76.chainmask >> 8) & 0xf;
 switch (txpath) {
 case 2:
  mt76_set(dev, MT_BBP(TXBE, 5), 0x3);
  break;
 default:
  mt76_clear(dev, MT_BBP(TXBE, 5), 0x3);
  break;
 }
}
