
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int has_5ghz; int has_2ghz; } ;
struct TYPE_4__ {int* data; } ;
struct TYPE_5__ {TYPE_3__ cap; TYPE_1__ eeprom; } ;
struct mt7615_dev {TYPE_2__ mt76; } ;


 int FIELD_GET (int ,int) ;


 int MT_EE_NIC_WIFI_CONF_BAND_SEL ;
 size_t MT_EE_WIFI_CONF ;

__attribute__((used)) static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
{
 u8 val, *eeprom = dev->mt76.eeprom.data;

 val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
   eeprom[MT_EE_WIFI_CONF]);
 switch (val) {
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
