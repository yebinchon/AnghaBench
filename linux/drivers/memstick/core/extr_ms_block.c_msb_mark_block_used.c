
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int read_only; int * free_block_count; int used_blocks_bitmap; } ;


 int __set_bit (int,int ) ;
 int msb_get_zone_from_pba (int) ;
 scalar_t__ msb_validate_used_block_bitmap (struct msb_data*) ;
 int pr_err (char*,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void msb_mark_block_used(struct msb_data *msb, int pba)
{
 int zone = msb_get_zone_from_pba(pba);

 if (test_bit(pba, msb->used_blocks_bitmap)) {
  pr_err(
  "BUG: attempt to mark already used pba %d as used", pba);
  msb->read_only = 1;
  return;
 }

 if (msb_validate_used_block_bitmap(msb))
  return;


 __set_bit(pba, msb->used_blocks_bitmap);
 msb->free_block_count[zone]--;
}
