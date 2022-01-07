
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bgmac_slot_info {int dma_addr; struct bgmac_rx_header* buf; } ;
struct bgmac_rx_header {void* flags; void* len; } ;


 int BGMAC_RX_BUF_OFFSET ;
 int BGMAC_RX_BUF_SIZE ;
 int DMA_FROM_DEVICE ;
 void* cpu_to_le16 (int) ;
 int dma_sync_single_for_cpu (struct device*,int ,int ,int ) ;
 int dma_sync_single_for_device (struct device*,int ,int ,int ) ;

__attribute__((used)) static void bgmac_dma_rx_poison_buf(struct device *dma_dev,
        struct bgmac_slot_info *slot)
{
 struct bgmac_rx_header *rx = slot->buf + BGMAC_RX_BUF_OFFSET;

 dma_sync_single_for_cpu(dma_dev, slot->dma_addr, BGMAC_RX_BUF_SIZE,
    DMA_FROM_DEVICE);
 rx->len = cpu_to_le16(0xdead);
 rx->flags = cpu_to_le16(0xbeef);
 dma_sync_single_for_device(dma_dev, slot->dma_addr, BGMAC_RX_BUF_SIZE,
       DMA_FROM_DEVICE);
}
