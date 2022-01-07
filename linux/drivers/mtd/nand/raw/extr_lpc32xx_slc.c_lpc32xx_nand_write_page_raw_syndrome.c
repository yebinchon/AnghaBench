
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* write_buf ) (struct nand_chip*,int ,int ) ;} ;
struct TYPE_3__ {int size; int steps; } ;
struct nand_chip {int oob_poi; TYPE_2__ legacy; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int const*,int) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ,int ) ;

__attribute__((used)) static int lpc32xx_nand_write_page_raw_syndrome(struct nand_chip *chip,
      const uint8_t *buf,
      int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 nand_prog_page_begin_op(chip, page, 0, buf,
    chip->ecc.size * chip->ecc.steps);
 chip->legacy.write_buf(chip, chip->oob_poi, mtd->oobsize);

 return nand_prog_page_end_op(chip);
}
