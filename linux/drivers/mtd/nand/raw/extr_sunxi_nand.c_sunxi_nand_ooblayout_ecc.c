
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int steps; int bytes; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static int sunxi_nand_ooblayout_ecc(struct mtd_info *mtd, int section,
        struct mtd_oob_region *oobregion)
{
 struct nand_chip *nand = mtd_to_nand(mtd);
 struct nand_ecc_ctrl *ecc = &nand->ecc;

 if (section >= ecc->steps)
  return -ERANGE;

 oobregion->offset = section * (ecc->bytes + 4) + 4;
 oobregion->length = ecc->bytes;

 return 0;
}
