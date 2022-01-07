
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct dpaa2_eth_priv {int iommu_domain; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DPAA2_ETH_RX_BUF_SIZE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 void* dpaa2_iova_to_virt (int ,int ) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void free_bufs(struct dpaa2_eth_priv *priv, u64 *buf_array, int count)
{
 struct device *dev = priv->net_dev->dev.parent;
 void *vaddr;
 int i;

 for (i = 0; i < count; i++) {
  vaddr = dpaa2_iova_to_virt(priv->iommu_domain, buf_array[i]);
  dma_unmap_page(dev, buf_array[i], DPAA2_ETH_RX_BUF_SIZE,
          DMA_BIDIRECTIONAL);
  free_pages((unsigned long)vaddr, 0);
 }
}
