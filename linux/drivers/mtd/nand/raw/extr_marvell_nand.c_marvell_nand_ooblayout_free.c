
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {scalar_t__ writesize; } ;
struct marvell_hw_ecc_layout {scalar_t__ data_bytes; int full_chunk_cnt; int spare_bytes; int last_spare_bytes; } ;
struct TYPE_2__ {struct marvell_hw_ecc_layout* layout; } ;


 int ERANGE ;
 scalar_t__ SZ_2K ;
 scalar_t__ SZ_4K ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 TYPE_1__* to_marvell_nand (struct nand_chip*) ;

__attribute__((used)) static int marvell_nand_ooblayout_free(struct mtd_info *mtd, int section,
           struct mtd_oob_region *oobregion)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 const struct marvell_hw_ecc_layout *lt = to_marvell_nand(chip)->layout;

 if (section)
  return -ERANGE;





 if (mtd->writesize == SZ_4K && lt->data_bytes == SZ_2K)
  oobregion->offset = 6;
 else
  oobregion->offset = 2;

 oobregion->length = (lt->full_chunk_cnt * lt->spare_bytes) +
       lt->last_spare_bytes - oobregion->offset;

 return 0;
}
