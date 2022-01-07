
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7603_dev {int dummy; } ;


 int mt76xx_chip (struct mt7603_dev*) ;

__attribute__((used)) static inline bool is_mt7603(struct mt7603_dev *dev)
{
 return mt76xx_chip(dev) == 0x7603;
}
