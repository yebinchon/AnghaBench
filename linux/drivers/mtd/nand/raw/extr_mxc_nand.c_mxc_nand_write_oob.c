
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mxc_nand_host {int data_buf; } ;
struct mtd_info {int writesize; } ;


 int memset (int ,int,int ) ;
 int mxc_nand_write_page (struct nand_chip*,int ,int,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int mxc_nand_write_oob(struct nand_chip *chip, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);

 memset(host->data_buf, 0xff, mtd->writesize);

 return mxc_nand_write_page(chip, host->data_buf, 0, page);
}
