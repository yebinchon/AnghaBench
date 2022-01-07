
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_oob {int block_status; } ;
struct sm_ftl {int block_size; scalar_t__ unstable; } ;


 int SM_OOB_SIZE ;
 scalar_t__ SM_SECTOR_SIZE ;
 int memset (struct sm_oob*,int,int ) ;
 int sm_printk (char*,int,int) ;
 scalar_t__ sm_recheck_media (struct sm_ftl*) ;
 int sm_write_sector (struct sm_ftl*,int,int,int,int *,struct sm_oob*) ;

__attribute__((used)) static void sm_mark_block_bad(struct sm_ftl *ftl, int zone, int block)
{
 struct sm_oob oob;
 int boffset;

 memset(&oob, 0xFF, SM_OOB_SIZE);
 oob.block_status = 0xF0;

 if (ftl->unstable)
  return;

 if (sm_recheck_media(ftl))
  return;

 sm_printk("marking block %d of zone %d as bad", block, zone);




 for (boffset = 0; boffset < ftl->block_size; boffset += SM_SECTOR_SIZE)
  sm_write_sector(ftl, zone, block, boffset, ((void*)0), &oob);
}
