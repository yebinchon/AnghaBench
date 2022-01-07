
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
 int brcmnand_set_ecc_enabled (struct brcmnand_host*,int) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
      int oob_required, int page)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 u8 *oob = oob_required ? (u8 *)chip->oob_poi : ((void*)0);
 int ret;

 nand_read_page_op(chip, page, 0, ((void*)0), 0);

 brcmnand_set_ecc_enabled(host, 0);
 ret = brcmnand_read(mtd, chip, host->last_addr,
   mtd->writesize >> FC_SHIFT, (u32 *)buf, oob);
 brcmnand_set_ecc_enabled(host, 1);
 return ret;
}
