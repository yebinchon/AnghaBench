
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bgmac_slot_info {int dma_addr; void* buf; } ;
struct bgmac_rx_header {void* flags; void* len; } ;
struct bgmac {int net_dev; struct device* dma_dev; } ;
typedef int dma_addr_t ;


 int BGMAC_RX_ALLOC_SIZE ;
 int BGMAC_RX_BUF_OFFSET ;
 int BGMAC_RX_BUF_SIZE ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 void* cpu_to_le16 (int) ;
 int dma_map_single (struct device*,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 void* netdev_alloc_frag (int ) ;
 int netdev_err (int ,char*) ;
 int put_page (int ) ;
 int virt_to_head_page (void*) ;

__attribute__((used)) static int bgmac_dma_rx_skb_for_slot(struct bgmac *bgmac,
         struct bgmac_slot_info *slot)
{
 struct device *dma_dev = bgmac->dma_dev;
 dma_addr_t dma_addr;
 struct bgmac_rx_header *rx;
 void *buf;


 buf = netdev_alloc_frag(BGMAC_RX_ALLOC_SIZE);
 if (!buf)
  return -ENOMEM;


 rx = buf + BGMAC_RX_BUF_OFFSET;
 rx->len = cpu_to_le16(0xdead);
 rx->flags = cpu_to_le16(0xbeef);


 dma_addr = dma_map_single(dma_dev, buf + BGMAC_RX_BUF_OFFSET,
      BGMAC_RX_BUF_SIZE, DMA_FROM_DEVICE);
 if (dma_mapping_error(dma_dev, dma_addr)) {
  netdev_err(bgmac->net_dev, "DMA mapping error\n");
  put_page(virt_to_head_page(buf));
  return -ENOMEM;
 }


 slot->buf = buf;
 slot->dma_addr = dma_addr;

 return 0;
}
