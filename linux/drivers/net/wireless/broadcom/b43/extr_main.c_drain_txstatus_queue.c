
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_MMIO_XMITSTAT_0 ;
 int B43_MMIO_XMITSTAT_1 ;
 int b43_read32 (struct b43_wldev*,int ) ;

__attribute__((used)) static void drain_txstatus_queue(struct b43_wldev *dev)
{
 u32 dummy;

 if (dev->dev->core_rev < 5)
  return;



 while (1) {
  dummy = b43_read32(dev, B43_MMIO_XMITSTAT_0);
  if (!(dummy & 0x00000001))
   break;
  dummy = b43_read32(dev, B43_MMIO_XMITSTAT_1);
 }
}
