
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rx_ring_info {int rbr_blocks_per_page; scalar_t__ rbr_block_size; int * rbr; } ;
struct page {int dummy; } ;
struct niu {int device; TYPE_1__* ops; } ;
typedef int gfp_t ;
typedef int __le32 ;
struct TYPE_2__ {int (* map_page ) (int ,struct page*,int ,int ,int ) ;} ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int RBR_DESCR_ADDR_SHIFT ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int cpu_to_le32 (int) ;
 int niu_hash_page (struct rx_ring_info*,struct page*,int) ;
 int page_ref_add (struct page*,int) ;
 int stub1 (int ,struct page*,int ,int ,int ) ;

__attribute__((used)) static int niu_rbr_add_page(struct niu *np, struct rx_ring_info *rp,
       gfp_t mask, int start_index)
{
 struct page *page;
 u64 addr;
 int i;

 page = alloc_page(mask);
 if (!page)
  return -ENOMEM;

 addr = np->ops->map_page(np->device, page, 0,
     PAGE_SIZE, DMA_FROM_DEVICE);
 if (!addr) {
  __free_page(page);
  return -ENOMEM;
 }

 niu_hash_page(rp, page, addr);
 if (rp->rbr_blocks_per_page > 1)
  page_ref_add(page, rp->rbr_blocks_per_page - 1);

 for (i = 0; i < rp->rbr_blocks_per_page; i++) {
  __le32 *rbr = &rp->rbr[start_index + i];

  *rbr = cpu_to_le32(addr >> RBR_DESCR_ADDR_SHIFT);
  addr += rp->rbr_block_size;
 }

 return 0;
}
