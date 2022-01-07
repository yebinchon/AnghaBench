
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int* data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; } ;
struct mt7603_dev {TYPE_2__ mt76; } ;


 int ARRAY_SIZE (int const*) ;






 scalar_t__ is_mt7628 (struct mt7603_dev*) ;
 int mt7603_has_cal_free_data (struct mt7603_dev*,int*) ;

__attribute__((used)) static void
mt7603_apply_cal_free_data(struct mt7603_dev *dev, u8 *efuse)
{
 static const u8 cal_free_bytes[] = {
  132,
  133,
  129,
  128,

  131,
  131 + 1,
  130,
  130 + 1,
 };
 u8 *eeprom = dev->mt76.eeprom.data;
 int n = ARRAY_SIZE(cal_free_bytes);
 int i;

 if (!mt7603_has_cal_free_data(dev, efuse))
  return;

 if (is_mt7628(dev))
  n -= 4;

 for (i = 0; i < n; i++) {
  int offset = cal_free_bytes[i];

  eeprom[offset] = efuse[offset];
 }
}
