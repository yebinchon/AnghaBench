
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * data_ring; scalar_t__ data_bus; int page_info; } ;
struct TYPE_5__ {int seqno; void* desc_ring; scalar_t__ bus; } ;
struct gve_rx_ring {int q_num; int mask; int fill_cnt; TYPE_3__ data; int * q_resources; scalar_t__ q_resources_bus; TYPE_2__ desc; scalar_t__ cnt; struct gve_priv* gve; } ;
struct gve_rx_desc {int dummy; } ;
struct gve_priv {int rx_pages_per_qpl; int rx_desc_cnt; int dev; TYPE_1__* pdev; struct gve_rx_ring* rx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 void* dma_alloc_coherent (struct device*,size_t,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,size_t,int *,scalar_t__) ;
 int dma_wmb () ;
 int drv ;
 int gve_prefill_rx_pages (struct gve_rx_ring*) ;
 int gve_rx_add_to_block (struct gve_priv*,int) ;
 int kvfree (int ) ;
 int memset (struct gve_rx_ring*,int ,int) ;
 int netif_dbg (struct gve_priv*,int ,int ,char*,...) ;

__attribute__((used)) static int gve_rx_alloc_ring(struct gve_priv *priv, int idx)
{
 struct gve_rx_ring *rx = &priv->rx[idx];
 struct device *hdev = &priv->pdev->dev;
 u32 slots, npages;
 int filled_pages;
 size_t bytes;
 int err;

 netif_dbg(priv, drv, priv->dev, "allocating rx ring\n");

 memset(rx, 0, sizeof(*rx));

 rx->gve = priv;
 rx->q_num = idx;

 slots = priv->rx_pages_per_qpl;
 rx->mask = slots - 1;


 bytes = sizeof(*rx->data.data_ring) * slots;
 rx->data.data_ring = dma_alloc_coherent(hdev, bytes,
      &rx->data.data_bus,
      GFP_KERNEL);
 if (!rx->data.data_ring)
  return -ENOMEM;
 filled_pages = gve_prefill_rx_pages(rx);
 if (filled_pages < 0) {
  err = -ENOMEM;
  goto abort_with_slots;
 }
 rx->fill_cnt = filled_pages;

 dma_wmb();


 rx->q_resources =
  dma_alloc_coherent(hdev,
       sizeof(*rx->q_resources),
       &rx->q_resources_bus,
       GFP_KERNEL);
 if (!rx->q_resources) {
  err = -ENOMEM;
  goto abort_filled;
 }
 netif_dbg(priv, drv, priv->dev, "rx[%d]->data.data_bus=%lx\n", idx,
    (unsigned long)rx->data.data_bus);


 bytes = sizeof(struct gve_rx_desc) * priv->rx_desc_cnt;
 npages = bytes / PAGE_SIZE;
 if (npages * PAGE_SIZE != bytes) {
  err = -EIO;
  goto abort_with_q_resources;
 }

 rx->desc.desc_ring = dma_alloc_coherent(hdev, bytes, &rx->desc.bus,
      GFP_KERNEL);
 if (!rx->desc.desc_ring) {
  err = -ENOMEM;
  goto abort_with_q_resources;
 }
 rx->mask = slots - 1;
 rx->cnt = 0;
 rx->desc.seqno = 1;
 gve_rx_add_to_block(priv, idx);

 return 0;

abort_with_q_resources:
 dma_free_coherent(hdev, sizeof(*rx->q_resources),
     rx->q_resources, rx->q_resources_bus);
 rx->q_resources = ((void*)0);
abort_filled:
 kvfree(rx->data.page_info);
abort_with_slots:
 bytes = sizeof(*rx->data.data_ring) * slots;
 dma_free_coherent(hdev, bytes, rx->data.data_ring, rx->data.data_bus);
 rx->data.data_ring = ((void*)0);

 return err;
}
