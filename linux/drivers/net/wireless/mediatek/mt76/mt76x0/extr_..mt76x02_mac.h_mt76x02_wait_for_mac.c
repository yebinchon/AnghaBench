
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt76_dev {TYPE_1__* bus; int state; } ;
struct TYPE_2__ {int (* rr ) (struct mt76_dev*,int const) ;} ;


 int MT76_REMOVED ;
 int stub1 (struct mt76_dev*,int const) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline bool mt76x02_wait_for_mac(struct mt76_dev *dev)
{
 const u32 MAC_CSR0 = 0x1000;
 int i;

 for (i = 0; i < 500; i++) {
  if (test_bit(MT76_REMOVED, &dev->state))
   return 0;

  switch (dev->bus->rr(dev, MAC_CSR0)) {
  case 0:
  case ~0:
   break;
  default:
   return 1;
  }
  usleep_range(5000, 10000);
 }
 return 0;
}
