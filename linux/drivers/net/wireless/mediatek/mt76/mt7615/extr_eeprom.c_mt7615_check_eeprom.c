
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int data; } ;
struct mt76_dev {TYPE_1__ eeprom; } ;


 int EINVAL ;
 int get_unaligned_le16 (int ) ;

__attribute__((used)) static int mt7615_check_eeprom(struct mt76_dev *dev)
{
 u16 val = get_unaligned_le16(dev->eeprom.data);

 switch (val) {
 case 0x7615:
  return 0;
 default:
  return -EINVAL;
 }
}
