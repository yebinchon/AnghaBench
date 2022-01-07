
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sm_oob {int data_status; int ecc2; int ecc1; } ;
struct sm_ftl {int block_size; scalar_t__ smallpagenand; scalar_t__ unstable; } ;


 int CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC ;
 int EIO ;
 int IS_ENABLED (int ) ;
 int SM_OOB_SIZE ;
 int SM_SECTOR_SIZE ;
 int SM_SMALL_PAGE ;
 int __nand_calculate_ecc (int *,int,int ,int ) ;
 int memset (struct sm_oob*,int,int ) ;
 scalar_t__ sm_erase_block (struct sm_ftl*,int,int,int ) ;
 int sm_mark_block_bad (struct sm_ftl*,int,int) ;
 int sm_printk (char*,int,int,int) ;
 int sm_write_lba (struct sm_oob*,int) ;
 int sm_write_sector (struct sm_ftl*,int,int,int,int *,struct sm_oob*) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static int sm_write_block(struct sm_ftl *ftl, uint8_t *buf,
     int zone, int block, int lba,
     unsigned long invalid_bitmap)
{
 struct sm_oob oob;
 int boffset;
 int retry = 0;


 memset(&oob, 0xFF, SM_OOB_SIZE);
 sm_write_lba(&oob, lba);
restart:
 if (ftl->unstable)
  return -EIO;

 for (boffset = 0; boffset < ftl->block_size;
    boffset += SM_SECTOR_SIZE) {

  oob.data_status = 0xFF;

  if (test_bit(boffset / SM_SECTOR_SIZE, &invalid_bitmap)) {

   sm_printk("sector %d of block at LBA %d of zone %d"
    " couldn't be read, marking it as invalid",
    boffset / SM_SECTOR_SIZE, lba, zone);

   oob.data_status = 0;
  }

  if (ftl->smallpagenand) {
   __nand_calculate_ecc(buf + boffset, SM_SMALL_PAGE,
     oob.ecc1,
     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));

   __nand_calculate_ecc(buf + boffset + SM_SMALL_PAGE,
     SM_SMALL_PAGE, oob.ecc2,
     IS_ENABLED(CONFIG_MTD_NAND_ECC_SW_HAMMING_SMC));
  }
  if (!sm_write_sector(ftl, zone, block, boffset,
       buf + boffset, &oob))
   continue;

  if (!retry) {







   if (sm_erase_block(ftl, zone, block, 0))
    return -EIO;

   retry = 1;
   goto restart;
  } else {
   sm_mark_block_bad(ftl, zone, block);
   return -EIO;
  }
 }
 return 0;
}
