
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dpaa2_sg_entry {int dummy; } ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {int iommu_domain; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int DMA_BIDIRECTIONAL ;
 int DPAA2_ETH_MAX_SG_ENTRIES ;
 int DPAA2_ETH_RX_BUF_SIZE ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int dpaa2_fd_get_addr (struct dpaa2_fd const*) ;
 scalar_t__ dpaa2_fd_get_format (struct dpaa2_fd const*) ;
 int dpaa2_fd_get_offset (struct dpaa2_fd const*) ;
 scalar_t__ dpaa2_fd_sg ;
 scalar_t__ dpaa2_fd_single ;
 void* dpaa2_iova_to_virt (int ,int ) ;
 int dpaa2_sg_get_addr (struct dpaa2_sg_entry*) ;
 scalar_t__ dpaa2_sg_is_final (struct dpaa2_sg_entry*) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void free_rx_fd(struct dpaa2_eth_priv *priv,
         const struct dpaa2_fd *fd,
         void *vaddr)
{
 struct device *dev = priv->net_dev->dev.parent;
 dma_addr_t addr = dpaa2_fd_get_addr(fd);
 u8 fd_format = dpaa2_fd_get_format(fd);
 struct dpaa2_sg_entry *sgt;
 void *sg_vaddr;
 int i;


 if (fd_format == dpaa2_fd_single)
  goto free_buf;
 else if (fd_format != dpaa2_fd_sg)

  return;




 sgt = vaddr + dpaa2_fd_get_offset(fd);
 for (i = 1; i < DPAA2_ETH_MAX_SG_ENTRIES; i++) {
  addr = dpaa2_sg_get_addr(&sgt[i]);
  sg_vaddr = dpaa2_iova_to_virt(priv->iommu_domain, addr);
  dma_unmap_page(dev, addr, DPAA2_ETH_RX_BUF_SIZE,
          DMA_BIDIRECTIONAL);

  free_pages((unsigned long)sg_vaddr, 0);
  if (dpaa2_sg_is_final(&sgt[i]))
   break;
 }

free_buf:
 free_pages((unsigned long)vaddr, 0);
}
