
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43legacy_dmaring* tx_ring5; struct b43legacy_dmaring* tx_ring4; struct b43legacy_dmaring* tx_ring0; struct b43legacy_dmaring* tx_ring1; struct b43legacy_dmaring* tx_ring2; struct b43legacy_dmaring* tx_ring3; } ;
struct b43legacy_wldev {TYPE_1__ dma; } ;
struct b43legacy_dmaring {int dummy; } ;


 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static struct b43legacy_dmaring *priority_to_txring(
      struct b43legacy_wldev *dev,
      int queue_priority)
{
 struct b43legacy_dmaring *ring;


return dev->dma.tx_ring1;


 switch (queue_priority) {
 default:
  B43legacy_WARN_ON(1);

 case 0:
  ring = dev->dma.tx_ring3;
  break;
 case 1:
  ring = dev->dma.tx_ring2;
  break;
 case 2:
  ring = dev->dma.tx_ring1;
  break;
 case 3:
  ring = dev->dma.tx_ring0;
  break;
 case 4:
  ring = dev->dma.tx_ring4;
  break;
 case 5:
  ring = dev->dma.tx_ring5;
  break;
 }

 return ring;
}
