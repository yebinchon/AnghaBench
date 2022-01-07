
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt76_dev {int rev; } ;



__attribute__((used)) static inline u16 mt76_chip(struct mt76_dev *dev)
{
 return dev->rev >> 16;
}
