
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ eeprom; int dev; } ;
struct mt76x02_dev {TYPE_2__ mt76; } ;


 int MT76X0U_EE_MAX_VER ;
 scalar_t__ MT_EE_MAC_ADDR ;
 int MT_EE_VERSION ;
 int dev_info (int ,char*,int,int) ;
 int dev_warn (int ,char*,int) ;
 int mt76x02_eeprom_get (struct mt76x02_dev*,int ) ;
 int mt76x02_mac_setaddr (struct mt76x02_dev*,scalar_t__) ;
 int mt76x0_load_eeprom (struct mt76x02_dev*) ;
 int mt76x0_set_chip_cap (struct mt76x02_dev*) ;
 int mt76x0_set_freq_offset (struct mt76x02_dev*) ;
 int mt76x0_set_temp_offset (struct mt76x02_dev*) ;

int mt76x0_eeprom_init(struct mt76x02_dev *dev)
{
 u8 version, fae;
 u16 data;
 int err;

 err = mt76x0_load_eeprom(dev);
 if (err < 0)
  return err;

 data = mt76x02_eeprom_get(dev, MT_EE_VERSION);
 version = data >> 8;
 fae = data;

 if (version > MT76X0U_EE_MAX_VER)
  dev_warn(dev->mt76.dev,
    "Warning: unsupported EEPROM version %02hhx\n",
    version);
 dev_info(dev->mt76.dev, "EEPROM ver:%02hhx fae:%02hhx\n",
   version, fae);

 mt76x02_mac_setaddr(dev, dev->mt76.eeprom.data + MT_EE_MAC_ADDR);
 mt76x0_set_chip_cap(dev);
 mt76x0_set_freq_offset(dev);
 mt76x0_set_temp_offset(dev);

 return 0;
}
