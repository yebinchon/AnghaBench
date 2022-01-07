
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int (* rr ) (struct mt76_dev*,int) ;} ;


 int stub1 (struct mt76_dev*,int) ;
 int udelay (int) ;

bool __mt76_poll(struct mt76_dev *dev, u32 offset, u32 mask, u32 val,
   int timeout)
{
 u32 cur;

 timeout /= 10;
 do {
  cur = dev->bus->rr(dev, offset) & mask;
  if (cur == val)
   return 1;

  udelay(10);
 } while (timeout-- > 0);

 return 0;
}
