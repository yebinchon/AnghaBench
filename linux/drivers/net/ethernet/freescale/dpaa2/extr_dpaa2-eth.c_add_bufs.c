
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct page {int dummy; } ;
struct dpaa2_eth_priv {TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {int dpio; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DPAA2_ETH_BUFS_PER_CMD ;
 int DPAA2_ETH_RX_BUF_RAW_SIZE ;
 int DPAA2_ETH_RX_BUF_SIZE ;
 int EBUSY ;
 int __free_pages (struct page*,int ) ;
 int cpu_relax () ;
 struct page* dev_alloc_pages (int ) ;
 int dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int dpaa2_io_service_release (int ,int ,int *,int) ;
 int free_bufs (struct dpaa2_eth_priv*,int *,int) ;
 int trace_dpaa2_eth_buf_seed (TYPE_2__*,struct page*,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int add_bufs(struct dpaa2_eth_priv *priv,
      struct dpaa2_eth_channel *ch, u16 bpid)
{
 struct device *dev = priv->net_dev->dev.parent;
 u64 buf_array[DPAA2_ETH_BUFS_PER_CMD];
 struct page *page;
 dma_addr_t addr;
 int i, err;

 for (i = 0; i < DPAA2_ETH_BUFS_PER_CMD; i++) {







  page = dev_alloc_pages(0);
  if (!page)
   goto err_alloc;

  addr = dma_map_page(dev, page, 0, DPAA2_ETH_RX_BUF_SIZE,
        DMA_BIDIRECTIONAL);
  if (unlikely(dma_mapping_error(dev, addr)))
   goto err_map;

  buf_array[i] = addr;


  trace_dpaa2_eth_buf_seed(priv->net_dev,
      page, DPAA2_ETH_RX_BUF_RAW_SIZE,
      addr, DPAA2_ETH_RX_BUF_SIZE,
      bpid);
 }

release_bufs:

 while ((err = dpaa2_io_service_release(ch->dpio, bpid,
            buf_array, i)) == -EBUSY)
  cpu_relax();




 if (err) {
  free_bufs(priv, buf_array, i);
  return 0;
 }

 return i;

err_map:
 __free_pages(page, 0);
err_alloc:



 if (i)
  goto release_bufs;

 return 0;
}
