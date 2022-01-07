
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mxc_nand_host {int dummy; } ;


 scalar_t__ NAND_ECC_HW ;
 int NFC_V3_CONFIG2 ;
 int NFC_V3_CONFIG2_ECC_EN ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void mxc_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
{
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 uint32_t config2;

 if (chip->ecc.mode != NAND_ECC_HW)
  return;

 config2 = readl(NFC_V3_CONFIG2);

 if (enable)
  config2 |= NFC_V3_CONFIG2_ECC_EN;
 else
  config2 &= ~NFC_V3_CONFIG2_ECC_EN;

 writel(config2, NFC_V3_CONFIG2);
}
