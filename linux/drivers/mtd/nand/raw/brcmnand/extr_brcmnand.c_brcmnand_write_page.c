
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u32 ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int dummy; } ;
struct brcmnand_host {int last_addr; } ;


 int brcmnand_write (struct mtd_info*,struct nand_chip*,int ,int const*,void*) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_write_page(struct nand_chip *chip, const uint8_t *buf,
          int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct brcmnand_host *host = nand_get_controller_data(chip);
 void *oob = oob_required ? chip->oob_poi : ((void*)0);

 nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 brcmnand_write(mtd, chip, host->last_addr, (const u32 *)buf, oob);

 return nand_prog_page_end_op(chip);
}
