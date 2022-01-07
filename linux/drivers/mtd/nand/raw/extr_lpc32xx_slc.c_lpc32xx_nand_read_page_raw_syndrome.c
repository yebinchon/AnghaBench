
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int (* read_buf ) (struct nand_chip*,int *,int) ;} ;
struct TYPE_4__ {int size; int steps; } ;
struct nand_chip {int * oob_poi; TYPE_1__ legacy; TYPE_2__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int) ;
 int stub2 (struct nand_chip*,int *,int) ;

__attribute__((used)) static int lpc32xx_nand_read_page_raw_syndrome(struct nand_chip *chip,
            uint8_t *buf, int oob_required,
            int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);


 nand_read_page_op(chip, page, 0, ((void*)0), 0);


 chip->legacy.read_buf(chip, buf, chip->ecc.size * chip->ecc.steps);
 chip->legacy.read_buf(chip, chip->oob_poi, mtd->oobsize);

 return 0;
}
