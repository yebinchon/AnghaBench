
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int qpl; } ;
struct gve_tx_ring {int q_num; int mask; int * info; int * desc; scalar_t__ bus; TYPE_2__ tx_fifo; int netdev_txq; void* q_resources; scalar_t__ q_resources_bus; } ;
struct gve_priv {int tx_desc_cnt; int dev; TYPE_1__* pdev; struct gve_tx_ring* tx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,size_t,int *,scalar_t__) ;
 int drv ;
 int gve_assign_tx_qpl (struct gve_priv*) ;
 int gve_tx_add_to_block (struct gve_priv*,int) ;
 scalar_t__ gve_tx_fifo_init (struct gve_priv*,TYPE_2__*) ;
 int gve_tx_fifo_release (struct gve_priv*,TYPE_2__*) ;
 int memset (struct gve_tx_ring*,int ,int) ;
 int netdev_get_tx_queue (int ,int) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,int,unsigned long) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

__attribute__((used)) static int gve_tx_alloc_ring(struct gve_priv *priv, int idx)
{
 struct gve_tx_ring *tx = &priv->tx[idx];
 struct device *hdev = &priv->pdev->dev;
 u32 slots = priv->tx_desc_cnt;
 size_t bytes;


 memset(tx, 0, sizeof(*tx));
 tx->q_num = idx;

 tx->mask = slots - 1;


 tx->info = vzalloc(sizeof(*tx->info) * slots);
 if (!tx->info)
  return -ENOMEM;


 bytes = sizeof(*tx->desc) * slots;
 tx->desc = dma_alloc_coherent(hdev, bytes, &tx->bus, GFP_KERNEL);
 if (!tx->desc)
  goto abort_with_info;

 tx->tx_fifo.qpl = gve_assign_tx_qpl(priv);


 if (gve_tx_fifo_init(priv, &tx->tx_fifo))
  goto abort_with_desc;

 tx->q_resources =
  dma_alloc_coherent(hdev,
       sizeof(*tx->q_resources),
       &tx->q_resources_bus,
       GFP_KERNEL);
 if (!tx->q_resources)
  goto abort_with_fifo;

 netif_dbg(priv, drv, priv->dev, "tx[%d]->bus=%lx\n", idx,
    (unsigned long)tx->bus);
 tx->netdev_txq = netdev_get_tx_queue(priv->dev, idx);
 gve_tx_add_to_block(priv, idx);

 return 0;

abort_with_fifo:
 gve_tx_fifo_release(priv, &tx->tx_fifo);
abort_with_desc:
 dma_free_coherent(hdev, bytes, tx->desc, tx->bus);
 tx->desc = ((void*)0);
abort_with_info:
 vfree(tx->info);
 tx->info = ((void*)0);
 return -ENOMEM;
}
