
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ave_desc {size_t skbs_dmalen; int skbs_dma; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int dma_map_single (int ,void*,size_t,int) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ave_dma_map(struct net_device *ndev, struct ave_desc *desc,
         void *ptr, size_t len, enum dma_data_direction dir,
         dma_addr_t *paddr)
{
 dma_addr_t map_addr;

 map_addr = dma_map_single(ndev->dev.parent, ptr, len, dir);
 if (unlikely(dma_mapping_error(ndev->dev.parent, map_addr)))
  return -ENOMEM;

 desc->skbs_dma = map_addr;
 desc->skbs_dmalen = len;
 *paddr = map_addr;

 return 0;
}
