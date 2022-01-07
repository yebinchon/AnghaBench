
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int steps; int bytes; int size; int strength; } ;
struct nand_chip {TYPE_2__ ecc; void* oob_poi; int controller; } ;
struct mtd_oob_region {int offset; } ;
struct TYPE_3__ {int failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; } ;
struct atmel_nand_controller {int dev; } ;
struct atmel_nand {int pmecc; } ;


 int atmel_pmecc_correct_erased_chunks (int ) ;
 int atmel_pmecc_correct_sector (int ,int,void*,void*) ;
 int atmel_pmecc_wait_rdy (int ) ;
 int dev_err (int ,char*,int) ;
 int max (int,int) ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,struct mtd_oob_region*) ;
 int nand_check_erased_ecc_chunk (void*,int ,void*,int ,int *,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct atmel_nand* to_atmel_nand (struct nand_chip*) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_nand_pmecc_correct_data(struct nand_chip *chip, void *buf,
      bool raw)
{
 struct atmel_nand *nand = to_atmel_nand(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct atmel_nand_controller *nc;
 struct mtd_oob_region oobregion;
 int ret, i, max_bitflips = 0;
 void *databuf, *eccbuf;

 nc = to_nand_controller(chip->controller);

 if (raw)
  return 0;

 ret = atmel_pmecc_wait_rdy(nand->pmecc);
 if (ret) {
  dev_err(nc->dev,
   "Failed to read NAND page data (err = %d)\n",
   ret);
  return ret;
 }

 mtd_ooblayout_ecc(mtd, 0, &oobregion);
 eccbuf = chip->oob_poi + oobregion.offset;
 databuf = buf;

 for (i = 0; i < chip->ecc.steps; i++) {
  ret = atmel_pmecc_correct_sector(nand->pmecc, i, databuf,
       eccbuf);
  if (ret < 0 && !atmel_pmecc_correct_erased_chunks(nand->pmecc))
   ret = nand_check_erased_ecc_chunk(databuf,
         chip->ecc.size,
         eccbuf,
         chip->ecc.bytes,
         ((void*)0), 0,
         chip->ecc.strength);

  if (ret >= 0)
   max_bitflips = max(ret, max_bitflips);
  else
   mtd->ecc_stats.failed++;

  databuf += chip->ecc.size;
  eccbuf += chip->ecc.bytes;
 }

 return max_bitflips;
}
