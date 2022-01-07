
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int dummy; } ;


 int mt76_chip (struct mt76_dev*) ;

__attribute__((used)) static inline bool is_mt7622(struct mt76_dev *dev)
{
 return mt76_chip(dev) == 0x7622;
}
