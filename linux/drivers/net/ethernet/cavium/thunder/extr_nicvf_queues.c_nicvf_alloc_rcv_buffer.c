
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct rbdr {scalar_t__ is_xdp; } ;
struct pgcache {scalar_t__ dma_addr; int * page; } ;
struct nicvf {scalar_t__ rb_page_offset; int * rb_page; TYPE_3__* pdev; TYPE_2__* pnicvf; int rb_pageref; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_1__* drv_stats; } ;
struct TYPE_4__ {int rcv_buffer_alloc_failures; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ XDP_PACKET_HEADROOM ;
 int __free_pages (int *,int ) ;
 scalar_t__ dma_map_page_attrs (int *,int *,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 struct pgcache* nicvf_alloc_page (struct nicvf*,struct rbdr*,int ) ;
 int nicvf_get_page (struct nicvf*) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static inline int nicvf_alloc_rcv_buffer(struct nicvf *nic, struct rbdr *rbdr,
      gfp_t gfp, u32 buf_len, u64 *rbuf)
{
 struct pgcache *pgcache = ((void*)0);




 if (!rbdr->is_xdp && nic->rb_page &&
     ((nic->rb_page_offset + buf_len) <= PAGE_SIZE)) {
  nic->rb_pageref++;
  goto ret;
 }

 nicvf_get_page(nic);
 nic->rb_page = ((void*)0);


 pgcache = nicvf_alloc_page(nic, rbdr, gfp);
 if (!pgcache && !nic->rb_page) {
  this_cpu_inc(nic->pnicvf->drv_stats->rcv_buffer_alloc_failures);
  return -ENOMEM;
 }

 nic->rb_page_offset = 0;


 if (rbdr->is_xdp)
  buf_len += XDP_PACKET_HEADROOM;


 if (pgcache)
  nic->rb_page = pgcache->page;
ret:
 if (rbdr->is_xdp && pgcache && pgcache->dma_addr) {
  *rbuf = pgcache->dma_addr;
 } else {

  *rbuf = (u64)dma_map_page_attrs(&nic->pdev->dev, nic->rb_page,
      nic->rb_page_offset, buf_len,
      DMA_FROM_DEVICE,
      DMA_ATTR_SKIP_CPU_SYNC);
  if (dma_mapping_error(&nic->pdev->dev, (dma_addr_t)*rbuf)) {
   if (!nic->rb_page_offset)
    __free_pages(nic->rb_page, 0);
   nic->rb_page = ((void*)0);
   return -ENOMEM;
  }
  if (pgcache)
   pgcache->dma_addr = *rbuf + XDP_PACKET_HEADROOM;
  nic->rb_page_offset += buf_len;
 }

 return 0;
}
