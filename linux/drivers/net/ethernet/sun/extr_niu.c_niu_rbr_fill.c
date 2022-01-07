
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_ring_info {int rbr_blocks_per_page; int rbr_index; int rbr_table_size; } ;
struct niu {int dummy; } ;
typedef int gfp_t ;


 int niu_rbr_add_page (struct niu*,struct rx_ring_info*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int niu_rbr_fill(struct niu *np, struct rx_ring_info *rp, gfp_t mask)
{
 int blocks_per_page = rp->rbr_blocks_per_page;
 int err, index = rp->rbr_index;

 err = 0;
 while (index < (rp->rbr_table_size - blocks_per_page)) {
  err = niu_rbr_add_page(np, rp, mask, index);
  if (unlikely(err))
   break;

  index += blocks_per_page;
 }

 rp->rbr_index = index;
 return err;
}
