
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mt76x02_dev {int dummy; } ;
typedef enum mt76x02_eeprom_modes { ____Placeholder_mt76x02_eeprom_modes } mt76x02_eeprom_modes ;


 int mt76x02_efuse_read (struct mt76x02_dev*,scalar_t__,void*,int) ;

int mt76x02_get_efuse_data(struct mt76x02_dev *dev, u16 base, void *buf,
      int len, enum mt76x02_eeprom_modes mode)
{
 int ret, i;

 for (i = 0; i + 16 <= len; i += 16) {
  ret = mt76x02_efuse_read(dev, base + i, buf + i, mode);
  if (ret)
   return ret;
 }

 return 0;
}
