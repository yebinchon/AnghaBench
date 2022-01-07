
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dev; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct RxDesc {int addr; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int R8169_RX_BUF_SIZE ;
 int __free_pages (struct page*,int ) ;
 struct page* alloc_pages_node (int,int ,int ) ;
 int cpu_to_le64 (int ) ;
 int dev_to_node (struct device*) ;
 int dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 int dma_mapping_error (struct device*,int ) ;
 int drv ;
 int get_order (int ) ;
 scalar_t__ net_ratelimit () ;
 int netif_err (struct rtl8169_private*,int ,int ,char*) ;
 int rtl8169_mark_to_asic (struct RxDesc*) ;
 struct device* tp_to_dev (struct rtl8169_private*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct page *rtl8169_alloc_rx_data(struct rtl8169_private *tp,
       struct RxDesc *desc)
{
 struct device *d = tp_to_dev(tp);
 int node = dev_to_node(d);
 dma_addr_t mapping;
 struct page *data;

 data = alloc_pages_node(node, GFP_KERNEL, get_order(R8169_RX_BUF_SIZE));
 if (!data)
  return ((void*)0);

 mapping = dma_map_page(d, data, 0, R8169_RX_BUF_SIZE, DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(d, mapping))) {
  if (net_ratelimit())
   netif_err(tp, drv, tp->dev, "Failed to map RX DMA!\n");
  __free_pages(data, get_order(R8169_RX_BUF_SIZE));
  return ((void*)0);
 }

 desc->addr = cpu_to_le64(mapping);
 rtl8169_mark_to_asic(desc);

 return data;
}
