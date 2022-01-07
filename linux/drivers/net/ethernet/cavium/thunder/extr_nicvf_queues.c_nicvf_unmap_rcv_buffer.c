
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_FROM_DEVICE ;
 int PAGE_MASK ;
 int RCV_FRAG_LEN ;
 scalar_t__ XDP_PACKET_HEADROOM ;
 int dma_unmap_page_attrs (int *,int ,int,int ,int ) ;
 int page_ref_count (struct page*) ;
 int phys_to_virt (int ) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static void nicvf_unmap_rcv_buffer(struct nicvf *nic, u64 dma_addr,
       u64 buf_addr, bool xdp)
{
 struct page *page = ((void*)0);
 int len = RCV_FRAG_LEN;

 if (xdp) {
  page = virt_to_page(phys_to_virt(buf_addr));





  if (page_ref_count(page) != 1)
   return;

  len += XDP_PACKET_HEADROOM;

  dma_addr &= PAGE_MASK;
 }
 dma_unmap_page_attrs(&nic->pdev->dev, dma_addr, len,
        DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
}
