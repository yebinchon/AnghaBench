
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int data; } ;
struct mt76_dev {TYPE_1__ eeprom; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kzalloc (int ,int,int ) ;
 int mt76_get_of_eeprom (struct mt76_dev*,int) ;

int
mt76_eeprom_init(struct mt76_dev *dev, int len)
{
 dev->eeprom.size = len;
 dev->eeprom.data = devm_kzalloc(dev->dev, len, GFP_KERNEL);
 if (!dev->eeprom.data)
  return -ENOMEM;

 return !mt76_get_of_eeprom(dev, len);
}
