
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sm_ftl {int zone_count; int max_lba; int block_size; } ;
typedef int loff_t ;


 int do_div (int,int ) ;

__attribute__((used)) static void sm_break_offset(struct sm_ftl *ftl, loff_t loffset,
       int *zone, int *block, int *boffset)
{
 u64 offset = loffset;
 *boffset = do_div(offset, ftl->block_size);
 *block = do_div(offset, ftl->max_lba);
 *zone = offset >= ftl->zone_count ? -1 : offset;
}
