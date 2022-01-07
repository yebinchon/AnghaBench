
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_wldev {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MMIO_XMITSTAT_0 ;
 int B43legacy_MMIO_XMITSTAT_1 ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;

__attribute__((used)) static void drain_txstatus_queue(struct b43legacy_wldev *dev)
{
 u32 dummy;

 if (dev->dev->id.revision < 5)
  return;



 while (1) {
  dummy = b43legacy_read32(dev, B43legacy_MMIO_XMITSTAT_0);
  if (!(dummy & 0x00000001))
   break;
  dummy = b43legacy_read32(dev, B43legacy_MMIO_XMITSTAT_1);
 }
}
