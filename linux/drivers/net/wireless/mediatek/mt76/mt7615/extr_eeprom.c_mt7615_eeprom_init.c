
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_7__ {TYPE_1__ eeprom; scalar_t__ macaddr; TYPE_2__ otp; } ;
struct mt7615_dev {TYPE_3__ mt76; } ;


 int ETH_ALEN ;
 int MT7615_EEPROM_SIZE ;
 scalar_t__ MT_EE_MAC_ADDR ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int mt7615_apply_cal_free_data (struct mt7615_dev*) ;
 int mt7615_check_eeprom (TYPE_3__*) ;
 int mt7615_eeprom_load (struct mt7615_dev*) ;
 int mt7615_eeprom_parse_hw_cap (struct mt7615_dev*) ;
 int mt76_eeprom_override (TYPE_3__*) ;

int mt7615_eeprom_init(struct mt7615_dev *dev)
{
 int ret;

 ret = mt7615_eeprom_load(dev);
 if (ret < 0)
  return ret;

 ret = mt7615_check_eeprom(&dev->mt76);
 if (ret && dev->mt76.otp.data)
  memcpy(dev->mt76.eeprom.data, dev->mt76.otp.data,
         MT7615_EEPROM_SIZE);
 else
  mt7615_apply_cal_free_data(dev);

 mt7615_eeprom_parse_hw_cap(dev);
 memcpy(dev->mt76.macaddr, dev->mt76.eeprom.data + MT_EE_MAC_ADDR,
        ETH_ALEN);

 mt76_eeprom_override(&dev->mt76);

 return 0;
}
