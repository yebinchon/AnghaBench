
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ mode; int size; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct omap_nand_info {TYPE_2__ nand; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ NAND_ECC_HW ;
 scalar_t__ memcmp (int *,int *,int) ;
 struct omap_nand_info* mtd_to_omap (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int omap_compare_ecc (int *,int *,int *) ;

__attribute__((used)) static int omap_correct_data(struct nand_chip *chip, u_char *dat,
        u_char *read_ecc, u_char *calc_ecc)
{
 struct omap_nand_info *info = mtd_to_omap(nand_to_mtd(chip));
 int blockCnt = 0, i = 0, ret = 0;
 int stat = 0;


 if ((info->nand.ecc.mode == NAND_ECC_HW) &&
   (info->nand.ecc.size == 2048))
  blockCnt = 4;
 else
  blockCnt = 1;

 for (i = 0; i < blockCnt; i++) {
  if (memcmp(read_ecc, calc_ecc, 3) != 0) {
   ret = omap_compare_ecc(read_ecc, calc_ecc, dat);
   if (ret < 0)
    return ret;

   stat += ret;
  }
  read_ecc += 3;
  calc_ecc += 3;
  dat += 512;
 }
 return stat;
}
