
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_3__ {int strength; int size; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct vf610_nfc {int data_access; TYPE_2__ chip; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;


 scalar_t__ ECC_SRAM_ADDR ;
 scalar_t__ ECC_STATUS ;
 int ECC_STATUS_ERR_COUNT ;
 int ECC_STATUS_MASK ;
 scalar_t__ NFC_MAIN_AREA (int ) ;
 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int nand_check_erased_ecc_chunk (int *,int ,int *,int ,int *,int ,int) ;
 int nand_read_oob_op (TYPE_2__*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int vf610_nfc_read (struct vf610_nfc*,scalar_t__) ;

__attribute__((used)) static inline int vf610_nfc_correct_data(struct nand_chip *chip, uint8_t *dat,
      uint8_t *oob, int page)
{
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 u32 ecc_status_off = NFC_MAIN_AREA(0) + ECC_SRAM_ADDR + ECC_STATUS;
 u8 ecc_status;
 u8 ecc_count;
 int flips_threshold = nfc->chip.ecc.strength / 2;

 ecc_status = vf610_nfc_read(nfc, ecc_status_off) & 0xff;
 ecc_count = ecc_status & ECC_STATUS_ERR_COUNT;

 if (!(ecc_status & ECC_STATUS_MASK))
  return ecc_count;

 nfc->data_access = 1;
 nand_read_oob_op(&nfc->chip, page, 0, oob, mtd->oobsize);
 nfc->data_access = 0;





 return nand_check_erased_ecc_chunk(dat, nfc->chip.ecc.size, oob,
        mtd->oobsize, ((void*)0), 0,
        flips_threshold);
}
