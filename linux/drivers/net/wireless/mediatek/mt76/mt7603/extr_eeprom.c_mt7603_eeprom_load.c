
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int mt76; } ;


 int MT7603_EEPROM_SIZE ;
 int mt7603_efuse_init (struct mt7603_dev*) ;
 int mt76_eeprom_init (int *,int ) ;

__attribute__((used)) static int
mt7603_eeprom_load(struct mt7603_dev *dev)
{
 int ret;

 ret = mt76_eeprom_init(&dev->mt76, MT7603_EEPROM_SIZE);
 if (ret < 0)
  return ret;

 return mt7603_efuse_init(dev);
}
