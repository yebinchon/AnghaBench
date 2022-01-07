
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct b43_dmaring {int type; TYPE_2__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dma_dev; } ;





 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int unmap_descbuffer (struct b43_dmaring*,int ,size_t,int) ;

__attribute__((used)) static bool b43_dma_mapping_error(struct b43_dmaring *ring,
      dma_addr_t addr,
      size_t buffersize, bool dma_to_device)
{
 if (unlikely(dma_mapping_error(ring->dev->dev->dma_dev, addr)))
  return 1;

 switch (ring->type) {
 case 130:
  if ((u64)addr + buffersize > (1ULL << 30))
   goto address_error;
  break;
 case 129:
  if ((u64)addr + buffersize > (1ULL << 32))
   goto address_error;
  break;
 case 128:


  break;
 }


 return 0;

address_error:

 unmap_descbuffer(ring, addr, buffersize, dma_to_device);

 return 1;
}
