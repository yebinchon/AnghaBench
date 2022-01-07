
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int * data_ring; int data_bus; int page_info; TYPE_3__* qpl; } ;
struct TYPE_6__ {int * desc_ring; int bus; } ;
struct gve_rx_ring {int mask; TYPE_4__ data; int * q_resources; int q_resources_bus; TYPE_2__ desc; } ;
struct gve_rx_desc {int dummy; } ;
struct gve_priv {int rx_desc_cnt; int dev; TYPE_1__* pdev; struct gve_rx_ring* rx; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {struct device dev; } ;


 int dma_free_coherent (struct device*,size_t,int *,int ) ;
 int drv ;
 int gve_rx_remove_from_block (struct gve_priv*,int) ;
 int gve_unassign_qpl (struct gve_priv*,int ) ;
 int kvfree (int ) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,int) ;

__attribute__((used)) static void gve_rx_free_ring(struct gve_priv *priv, int idx)
{
 struct gve_rx_ring *rx = &priv->rx[idx];
 struct device *dev = &priv->pdev->dev;
 size_t bytes;
 u32 slots;

 gve_rx_remove_from_block(priv, idx);

 bytes = sizeof(struct gve_rx_desc) * priv->rx_desc_cnt;
 dma_free_coherent(dev, bytes, rx->desc.desc_ring, rx->desc.bus);
 rx->desc.desc_ring = ((void*)0);

 dma_free_coherent(dev, sizeof(*rx->q_resources),
     rx->q_resources, rx->q_resources_bus);
 rx->q_resources = ((void*)0);

 gve_unassign_qpl(priv, rx->data.qpl->id);
 rx->data.qpl = ((void*)0);
 kvfree(rx->data.page_info);

 slots = rx->mask + 1;
 bytes = sizeof(*rx->data.data_ring) * slots;
 dma_free_coherent(dev, bytes, rx->data.data_ring,
     rx->data.data_bus);
 rx->data.data_ring = ((void*)0);
 netif_dbg(priv, drv, priv->dev, "freed rx ring %d\n", idx);
}
