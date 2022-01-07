
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 size_t PAGE_SIZE ;
 int dma_sync_single_for_device (struct device*,int ,size_t,int ) ;

__attribute__((used)) static void gve_dma_sync_for_device(struct device *dev, dma_addr_t *page_buses,
        u64 iov_offset, u64 iov_len)
{
 dma_addr_t dma;
 u64 addr;

 for (addr = iov_offset; addr < iov_offset + iov_len;
      addr += PAGE_SIZE) {
  dma = page_buses[addr / PAGE_SIZE];
  dma_sync_single_for_device(dev, dma, PAGE_SIZE, DMA_TO_DEVICE);
 }
}
