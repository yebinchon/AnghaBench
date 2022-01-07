
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ave_desc {scalar_t__ skbs_dma; int skbs_dmalen; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_single (int ,scalar_t__,int ,int) ;

__attribute__((used)) static void ave_dma_unmap(struct net_device *ndev, struct ave_desc *desc,
     enum dma_data_direction dir)
{
 if (!desc->skbs_dma)
  return;

 dma_unmap_single(ndev->dev.parent,
    desc->skbs_dma, desc->skbs_dmalen, dir);
 desc->skbs_dma = 0;
}
