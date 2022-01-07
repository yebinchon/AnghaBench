
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nand_chip {int const* oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;


 int fsl_elbc_write_buf (struct nand_chip*,int const*,int ) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int fsl_elbc_write_subpage(struct nand_chip *chip, uint32_t offset,
      uint32_t data_len, const uint8_t *buf,
      int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 fsl_elbc_write_buf(chip, buf, mtd->writesize);
 fsl_elbc_write_buf(chip, chip->oob_poi, mtd->oobsize);
 return nand_prog_page_end_op(chip);
}
