
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int (* write_buf ) (struct nand_chip*,int const*,int ) ;} ;
struct TYPE_3__ {int size; int bytes; int steps; int total; int * calc_buf; int (* hwctl ) (struct nand_chip*,int ) ;} ;
struct nand_chip {int const* oob_poi; TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int NAND_ECC_WRITE ;
 int _omap_calculate_ecc_bch (struct mtd_info*,int const*,int *,int) ;
 int memset (int *,int,int) ;
 int mtd_ooblayout_set_eccbytes (struct mtd_info*,int *,int const*,int ,int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct nand_chip*,int const*,int ) ;
 int stub3 (struct nand_chip*,int const*,int ) ;

__attribute__((used)) static int omap_write_subpage_bch(struct nand_chip *chip, u32 offset,
      u32 data_len, const u8 *buf,
      int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 u8 *ecc_calc = chip->ecc.calc_buf;
 int ecc_size = chip->ecc.size;
 int ecc_bytes = chip->ecc.bytes;
 int ecc_steps = chip->ecc.steps;
 u32 start_step = offset / ecc_size;
 u32 end_step = (offset + data_len - 1) / ecc_size;
 int step, ret = 0;







 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);


 chip->ecc.hwctl(chip, NAND_ECC_WRITE);


 chip->legacy.write_buf(chip, buf, mtd->writesize);

 for (step = 0; step < ecc_steps; step++) {

  if (step < start_step || step > end_step)
   memset(ecc_calc, 0xff, ecc_bytes);
  else
   ret = _omap_calculate_ecc_bch(mtd, buf, ecc_calc, step);

  if (ret)
   return ret;

  buf += ecc_size;
  ecc_calc += ecc_bytes;
 }



 ecc_calc = chip->ecc.calc_buf;
 ret = mtd_ooblayout_set_eccbytes(mtd, ecc_calc, chip->oob_poi, 0,
      chip->ecc.total);
 if (ret)
  return ret;


 chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);

 return nand_prog_page_end_op(chip);
}
