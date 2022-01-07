
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* block_markbad ) (struct nand_chip*,unsigned int) ;} ;
struct nand_chip {unsigned int chip_shift; unsigned int phys_erase_shift; unsigned int page_shift; TYPE_1__ legacy; int base; } ;
struct mtd_info {int writesize; } ;
struct gpmi_nand_data {struct nand_chip nand; struct device* dev; } ;
struct device {int dummy; } ;
typedef unsigned int loff_t ;


 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 scalar_t__ mx23_check_transcription_stamp (struct gpmi_nand_data*) ;
 int mx23_write_transcription_stamp (struct gpmi_nand_data*) ;
 int nand_deselect_target (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int*,int) ;
 int nand_select_target (struct nand_chip*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 unsigned int nanddev_eraseblocks_per_target (int *) ;
 int stub1 (struct nand_chip*,unsigned int) ;

__attribute__((used)) static int mx23_boot_init(struct gpmi_nand_data *this)
{
 struct device *dev = this->dev;
 struct nand_chip *chip = &this->nand;
 struct mtd_info *mtd = nand_to_mtd(chip);
 unsigned int block_count;
 unsigned int block;
 int chipnr;
 int page;
 loff_t byte;
 uint8_t block_mark;
 int ret = 0;







 if (mx23_check_transcription_stamp(this))
  return 0;





 dev_dbg(dev, "Transcribing bad block marks...\n");


 block_count = nanddev_eraseblocks_per_target(&chip->base);





 for (block = 0; block < block_count; block++) {




  chipnr = block >> (chip->chip_shift - chip->phys_erase_shift);
  page = block << (chip->phys_erase_shift - chip->page_shift);
  byte = block << chip->phys_erase_shift;


  nand_select_target(chip, chipnr);
  ret = nand_read_page_op(chip, page, mtd->writesize, &block_mark,
     1);
  nand_deselect_target(chip);

  if (ret)
   continue;






  if (block_mark != 0xff) {
   dev_dbg(dev, "Transcribing mark in block %u\n", block);
   ret = chip->legacy.block_markbad(chip, byte);
   if (ret)
    dev_err(dev,
     "Failed to mark block bad with ret %d\n",
     ret);
  }
 }


 mx23_write_transcription_stamp(this);
 return 0;
}
