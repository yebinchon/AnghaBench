
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int writesize; } ;
struct denali_controller {int caps; } ;


 int DENALI_CAP_HW_ECC_FIXUP ;
 int EBADMSG ;
 int denali_check_erased_page (struct nand_chip*,int *,unsigned long,int) ;
 int denali_hw_ecc_fixup (struct nand_chip*,unsigned long*) ;
 int denali_page_xfer (struct nand_chip*,int *,int ,int,int) ;
 int denali_read_oob (struct nand_chip*,int) ;
 int denali_sw_ecc_fixup (struct nand_chip*,unsigned long*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct denali_controller* to_denali_controller (struct nand_chip*) ;

__attribute__((used)) static int denali_read_page(struct nand_chip *chip, u8 *buf,
       int oob_required, int page)
{
 struct denali_controller *denali = to_denali_controller(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 unsigned long uncor_ecc_flags = 0;
 int stat = 0;
 int ret;

 ret = denali_page_xfer(chip, buf, mtd->writesize, page, 0);
 if (ret && ret != -EBADMSG)
  return ret;

 if (denali->caps & DENALI_CAP_HW_ECC_FIXUP)
  stat = denali_hw_ecc_fixup(chip, &uncor_ecc_flags);
 else if (ret == -EBADMSG)
  stat = denali_sw_ecc_fixup(chip, &uncor_ecc_flags, buf);

 if (stat < 0)
  return stat;

 if (uncor_ecc_flags) {
  ret = denali_read_oob(chip, page);
  if (ret)
   return ret;

  stat = denali_check_erased_page(chip, buf,
      uncor_ecc_flags, stat);
 }

 return stat;
}
