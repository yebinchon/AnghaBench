
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* write_page ) (struct nand_chip*,int *,int,int) ;} ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;


 int memset (int *,int,int ) ;
 int * nand_get_data_buf (struct nand_chip*) ;
 int nand_prog_page_end_op (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_write_oob(struct nand_chip *nand, int page)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 u8 *buf = nand_get_data_buf(nand);
 int ret;

 memset(buf, 0xff, mtd->writesize);
 ret = nand->ecc.write_page(nand, buf, 1, page);
 if (ret)
  return ret;


 return nand_prog_page_end_op(nand);
}
