
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct nand_chip {scalar_t__ oob_poi; } ;
struct mtd_info {int writesize; } ;
struct brcmnand_host {int last_addr; } ;


 int FC_SHIFT ;
 int brcmnand_read (struct mtd_info*,struct nand_chip*,int ,int,int *,int *) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_read_page(struct nand_chip *chip, uint8_t *buf,
         int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct brcmnand_host *host = nand_get_controller_data(chip);
 u8 *oob = oob_required ? (u8 *)chip->oob_poi : ((void*)0);

 nand_read_page_op(chip, page, 0, ((void*)0), 0);

 return brcmnand_read(mtd, chip, host->last_addr,
   mtd->writesize >> FC_SHIFT, (u32 *)buf, oob);
}
