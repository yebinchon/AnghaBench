
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int agc0; int agc3; int sensitivity; } ;


 int MT_AGC (int) ;
 int MT_AGC1 (int) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;

__attribute__((used)) static void
mt7603_adjust_sensitivity(struct mt7603_dev *dev)
{
 u32 agc0 = dev->agc0, agc3 = dev->agc3;
 u32 adj;

 if (!dev->sensitivity || dev->sensitivity < -100) {
  dev->sensitivity = 0;
 } else if (dev->sensitivity <= -84) {
  adj = 7 + (dev->sensitivity + 92) / 2;

  agc0 = 0x56f0076f;
  agc0 |= adj << 12;
  agc0 |= adj << 16;
  agc3 = 0x81d0d5e3;
 } else if (dev->sensitivity <= -72) {
  adj = 7 + (dev->sensitivity + 80) / 2;

  agc0 = 0x6af0006f;
  agc0 |= adj << 8;
  agc0 |= adj << 12;
  agc0 |= adj << 16;

  agc3 = 0x8181d5e3;
 } else {
  if (dev->sensitivity > -54)
   dev->sensitivity = -54;

  adj = 7 + (dev->sensitivity + 80) / 2;

  agc0 = 0x7ff0000f;
  agc0 |= adj << 4;
  agc0 |= adj << 8;
  agc0 |= adj << 12;
  agc0 |= adj << 16;

  agc3 = 0x818181e3;
 }

 mt76_wr(dev, MT_AGC(0), agc0);
 mt76_wr(dev, MT_AGC1(0), agc0);

 mt76_wr(dev, MT_AGC(3), agc3);
 mt76_wr(dev, MT_AGC1(3), agc3);
}
