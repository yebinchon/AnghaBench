
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_2__ ecc; } ;
struct mxc_nand_host {int eccsize; TYPE_1__* devtype_data; } ;
struct mtd_info {int writesize; int erasesize; int oobsize; } ;
struct TYPE_3__ {int irqpending_quirk; } ;


 scalar_t__ NAND_ECC_HW ;
 int NFC_V1_V2_CONFIG ;
 int NFC_V1_V2_CONFIG1 ;
 int NFC_V1_V2_CONFIG1_ECC_EN ;
 int NFC_V1_V2_CONFIG1_INT_MSK ;
 int NFC_V1_V2_WRPROT ;
 int NFC_V21_RSLTSPARE_AREA ;
 int NFC_V21_UNLOCKEND_BLKADDR0 ;
 int NFC_V21_UNLOCKEND_BLKADDR1 ;
 int NFC_V21_UNLOCKEND_BLKADDR2 ;
 int NFC_V21_UNLOCKEND_BLKADDR3 ;
 int NFC_V21_UNLOCKSTART_BLKADDR0 ;
 int NFC_V21_UNLOCKSTART_BLKADDR1 ;
 int NFC_V21_UNLOCKSTART_BLKADDR2 ;
 int NFC_V21_UNLOCKSTART_BLKADDR3 ;
 int NFC_V2_CONFIG1_ECC_MODE_4 ;
 int NFC_V2_CONFIG1_FP_INT ;
 int NFC_V2_CONFIG1_PPB (scalar_t__) ;
 scalar_t__ ffs (int) ;
 int get_eccsize (struct mtd_info*) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int writew (int,int ) ;

__attribute__((used)) static void preset_v2(struct mtd_info *mtd)
{
 struct nand_chip *nand_chip = mtd_to_nand(mtd);
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
 uint16_t config1 = 0;

 config1 |= NFC_V2_CONFIG1_FP_INT;

 if (!host->devtype_data->irqpending_quirk)
  config1 |= NFC_V1_V2_CONFIG1_INT_MSK;

 if (mtd->writesize) {
  uint16_t pages_per_block = mtd->erasesize / mtd->writesize;

  if (nand_chip->ecc.mode == NAND_ECC_HW)
   config1 |= NFC_V1_V2_CONFIG1_ECC_EN;

  host->eccsize = get_eccsize(mtd);
  if (host->eccsize == 4)
   config1 |= NFC_V2_CONFIG1_ECC_MODE_4;

  config1 |= NFC_V2_CONFIG1_PPB(ffs(pages_per_block) - 6);
 } else {
  host->eccsize = 1;
 }

 writew(config1, NFC_V1_V2_CONFIG1);



 writew(mtd->oobsize / 2, NFC_V21_RSLTSPARE_AREA);


 writew(0x2, NFC_V1_V2_CONFIG);


 writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR0);
 writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR1);
 writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR2);
 writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR3);
 writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR0);
 writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR1);
 writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR2);
 writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR3);


 writew(0x4, NFC_V1_V2_WRPROT);
}
