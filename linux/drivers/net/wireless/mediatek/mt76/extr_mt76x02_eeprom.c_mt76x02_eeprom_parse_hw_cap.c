
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int has_5ghz; int has_2ghz; } ;
struct TYPE_4__ {TYPE_1__ cap; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;




 int FIELD_GET (int ,int ) ;
 int MT_EE_NIC_CONF_0 ;
 int MT_EE_NIC_CONF_0_BOARD_TYPE ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;

void mt76x02_eeprom_parse_hw_cap(struct mt76x02_dev *dev)
{
 u16 val = mt76x02_eeprom_get(dev, MT_EE_NIC_CONF_0);

 switch (FIELD_GET(MT_EE_NIC_CONF_0_BOARD_TYPE, val)) {
 case 128:
  dev->mt76.cap.has_5ghz = 1;
  break;
 case 129:
  dev->mt76.cap.has_2ghz = 1;
  break;
 default:
  dev->mt76.cap.has_2ghz = 1;
  dev->mt76.cap.has_5ghz = 1;
  break;
 }
}
