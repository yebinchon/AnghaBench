
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_oob {int dummy; } ;
struct sm_ftl {int zone_size; int max_lba; int block_size; int cis_block; int cis_boffset; scalar_t__ cis_page_offset; } ;


 int EIO ;
 scalar_t__ SM_SECTOR_SIZE ;
 scalar_t__ SM_SMALL_PAGE ;
 int dbg (char*,scalar_t__) ;
 int sm_block_valid (struct sm_oob*) ;
 int sm_read_cis (struct sm_ftl*) ;
 scalar_t__ sm_read_sector (struct sm_ftl*,int ,int,int,int *,struct sm_oob*) ;
 int sm_sector_valid (struct sm_oob*) ;

__attribute__((used)) static int sm_find_cis(struct sm_ftl *ftl)
{
 struct sm_oob oob;
 int block, boffset;
 int block_found = 0;
 int cis_found = 0;


 for (block = 0 ; block < ftl->zone_size - ftl->max_lba ; block++) {

  if (sm_read_sector(ftl, 0, block, 0, ((void*)0), &oob))
   continue;

  if (!sm_block_valid(&oob))
   continue;
  block_found = 1;
  break;
 }

 if (!block_found)
  return -EIO;


 for (boffset = 0 ; boffset < ftl->block_size;
      boffset += SM_SECTOR_SIZE) {

  if (sm_read_sector(ftl, 0, block, boffset, ((void*)0), &oob))
   continue;

  if (!sm_sector_valid(&oob))
   continue;
  break;
 }

 if (boffset == ftl->block_size)
  return -EIO;

 ftl->cis_block = block;
 ftl->cis_boffset = boffset;
 ftl->cis_page_offset = 0;

 cis_found = !sm_read_cis(ftl);

 if (!cis_found) {
  ftl->cis_page_offset = SM_SMALL_PAGE;
  cis_found = !sm_read_cis(ftl);
 }

 if (cis_found) {
  dbg("CIS block found at offset %x",
   block * ftl->block_size +
    boffset + ftl->cis_page_offset);
  return 0;
 }
 return -EIO;
}
