
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76x02_dev {int mt76; } ;


 int mt76_chip (int *) ;

__attribute__((used)) static inline bool is_mt76x2(struct mt76x02_dev *dev)
{
 return mt76_chip(&dev->mt76) == 0x7612 ||
        mt76_chip(&dev->mt76) == 0x7662 ||
        mt76_chip(&dev->mt76) == 0x7602;
}
