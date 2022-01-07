
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cp_private {int ring_dma; int * rx_ring; int * tx_ring; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int CP_RING_BYTES ;
 size_t CP_RX_RING_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cp_init_rings (struct cp_private*) ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static int cp_alloc_rings (struct cp_private *cp)
{
 struct device *d = &cp->pdev->dev;
 void *mem;
 int rc;

 mem = dma_alloc_coherent(d, CP_RING_BYTES, &cp->ring_dma, GFP_KERNEL);
 if (!mem)
  return -ENOMEM;

 cp->rx_ring = mem;
 cp->tx_ring = &cp->rx_ring[CP_RX_RING_SIZE];

 rc = cp_init_rings(cp);
 if (rc < 0)
  dma_free_coherent(d, CP_RING_BYTES, cp->rx_ring, cp->ring_dma);

 return rc;
}
