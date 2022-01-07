
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* qpl; } ;
struct gve_tx_ring {int mask; int * info; int * desc; int bus; TYPE_3__ tx_fifo; int * q_resources; int q_resources_bus; int netdev_txq; int req; } ;
struct gve_priv {int dev; TYPE_1__* pdev; struct gve_tx_ring* tx; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {struct device dev; } ;


 int dma_free_coherent (struct device*,size_t,int *,int ) ;
 int drv ;
 int gve_clean_tx_done (struct gve_priv*,struct gve_tx_ring*,int ,int) ;
 int gve_tx_fifo_release (struct gve_priv*,TYPE_3__*) ;
 int gve_tx_remove_from_block (struct gve_priv*,int) ;
 int gve_unassign_qpl (struct gve_priv*,int ) ;
 int netdev_tx_reset_queue (int ) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,int) ;
 int vfree (int *) ;

__attribute__((used)) static void gve_tx_free_ring(struct gve_priv *priv, int idx)
{
 struct gve_tx_ring *tx = &priv->tx[idx];
 struct device *hdev = &priv->pdev->dev;
 size_t bytes;
 u32 slots;

 gve_tx_remove_from_block(priv, idx);
 slots = tx->mask + 1;
 gve_clean_tx_done(priv, tx, tx->req, 0);
 netdev_tx_reset_queue(tx->netdev_txq);

 dma_free_coherent(hdev, sizeof(*tx->q_resources),
     tx->q_resources, tx->q_resources_bus);
 tx->q_resources = ((void*)0);

 gve_tx_fifo_release(priv, &tx->tx_fifo);
 gve_unassign_qpl(priv, tx->tx_fifo.qpl->id);
 tx->tx_fifo.qpl = ((void*)0);

 bytes = sizeof(*tx->desc) * slots;
 dma_free_coherent(hdev, bytes, tx->desc, tx->bus);
 tx->desc = ((void*)0);

 vfree(tx->info);
 tx->info = ((void*)0);

 netif_dbg(priv, drv, priv->dev, "freed tx queue %d\n", idx);
}
