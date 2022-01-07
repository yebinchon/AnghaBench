
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sh_flctl {int page_size; int flcmncr_base; scalar_t__ hwecc; void* erase_ADRCNT; void* rw_ADRCNT; } ;
struct TYPE_2__ {int size; int bytes; int strength; int algo; int mode; int write_page; int read_page; } ;
struct nand_chip {int options; TYPE_1__ ecc; int * badblock_pattern; int base; } ;
struct mtd_info {int writesize; } ;


 void* ADRCNT2_E ;
 void* ADRCNT_1 ;
 void* ADRCNT_2 ;
 void* ADRCNT_3 ;
 void* ADRCNT_4 ;
 int NAND_BUSWIDTH_16 ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_HW ;
 int NAND_ECC_SOFT ;
 int SEL_16BIT ;
 int _4ECCEN ;
 int flctl_4secc_largepage ;
 int flctl_4secc_oob_largepage_ops ;
 int flctl_4secc_oob_smallpage_ops ;
 int flctl_4secc_smallpage ;
 int flctl_read_page_hwecc ;
 int flctl_write_page_hwecc ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int nanddev_target_size (int *) ;

__attribute__((used)) static int flctl_chip_attach_chip(struct nand_chip *chip)
{
 u64 targetsize = nanddev_target_size(&chip->base);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct sh_flctl *flctl = mtd_to_flctl(mtd);





 if (chip->options & NAND_BUSWIDTH_16)
  flctl->flcmncr_base |= SEL_16BIT;

 if (mtd->writesize == 512) {
  flctl->page_size = 0;
  if (targetsize > (32 << 20)) {

   flctl->rw_ADRCNT = ADRCNT_4;
   flctl->erase_ADRCNT = ADRCNT_3;
  } else if (targetsize > (2 << 16)) {

   flctl->rw_ADRCNT = ADRCNT_3;
   flctl->erase_ADRCNT = ADRCNT_2;
  } else {
   flctl->rw_ADRCNT = ADRCNT_2;
   flctl->erase_ADRCNT = ADRCNT_1;
  }
 } else {
  flctl->page_size = 1;
  if (targetsize > (128 << 20)) {

   flctl->rw_ADRCNT = ADRCNT2_E;
   flctl->erase_ADRCNT = ADRCNT_3;
  } else if (targetsize > (8 << 16)) {

   flctl->rw_ADRCNT = ADRCNT_4;
   flctl->erase_ADRCNT = ADRCNT_2;
  } else {
   flctl->rw_ADRCNT = ADRCNT_3;
   flctl->erase_ADRCNT = ADRCNT_1;
  }
 }

 if (flctl->hwecc) {
  if (mtd->writesize == 512) {
   mtd_set_ooblayout(mtd, &flctl_4secc_oob_smallpage_ops);
   chip->badblock_pattern = &flctl_4secc_smallpage;
  } else {
   mtd_set_ooblayout(mtd, &flctl_4secc_oob_largepage_ops);
   chip->badblock_pattern = &flctl_4secc_largepage;
  }

  chip->ecc.size = 512;
  chip->ecc.bytes = 10;
  chip->ecc.strength = 4;
  chip->ecc.read_page = flctl_read_page_hwecc;
  chip->ecc.write_page = flctl_write_page_hwecc;
  chip->ecc.mode = NAND_ECC_HW;


  flctl->flcmncr_base |= _4ECCEN;
 } else {
  chip->ecc.mode = NAND_ECC_SOFT;
  chip->ecc.algo = NAND_ECC_HAMMING;
 }

 return 0;
}
