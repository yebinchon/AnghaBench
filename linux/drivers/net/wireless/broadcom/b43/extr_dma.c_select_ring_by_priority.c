
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct b43_dmaring* tx_ring_AC_BE; struct b43_dmaring* tx_ring_AC_BK; struct b43_dmaring* tx_ring_AC_VI; struct b43_dmaring* tx_ring_AC_VO; } ;
struct b43_wldev {TYPE_1__ dma; scalar_t__ qos_enabled; } ;
struct b43_dmaring {int dummy; } ;


 int B43_WARN_ON (int) ;

__attribute__((used)) static struct b43_dmaring *select_ring_by_priority(struct b43_wldev *dev,
         u8 queue_prio)
{
 struct b43_dmaring *ring;

 if (dev->qos_enabled) {

  switch (queue_prio) {
  default:
   B43_WARN_ON(1);

  case 0:
   ring = dev->dma.tx_ring_AC_VO;
   break;
  case 1:
   ring = dev->dma.tx_ring_AC_VI;
   break;
  case 2:
   ring = dev->dma.tx_ring_AC_BE;
   break;
  case 3:
   ring = dev->dma.tx_ring_AC_BK;
   break;
  }
 } else
  ring = dev->dma.tx_ring_AC_BE;

 return ring;
}
