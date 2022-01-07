
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* dev; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {scalar_t__ bustype; int host_pci; } ;
struct TYPE_4__ {scalar_t__ bus_type; TYPE_3__* sdev; } ;


 scalar_t__ B43_BUS_SSB ;
 int B43_DMA_64BIT ;
 scalar_t__ SSB_BUSTYPE_PCI ;
 int SSB_TMSHIGH ;
 int SSB_TMSHIGH_DMA64 ;
 scalar_t__ pci_is_pcie (int ) ;
 int ssb_read32 (TYPE_3__*,int ) ;

__attribute__((used)) static bool b43_dma_translation_in_low_word(struct b43_wldev *dev,
         enum b43_dmatype type)
{
 if (type != B43_DMA_64BIT)
  return 1;
 return 0;
}
