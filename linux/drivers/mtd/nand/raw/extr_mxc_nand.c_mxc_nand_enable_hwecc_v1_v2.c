
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mxc_nand_host {int dummy; } ;


 scalar_t__ NAND_ECC_HW ;
 int NFC_V1_V2_CONFIG1 ;
 int NFC_V1_V2_CONFIG1_ECC_EN ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readw (int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void mxc_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
{
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 uint16_t config1;

 if (chip->ecc.mode != NAND_ECC_HW)
  return;

 config1 = readw(NFC_V1_V2_CONFIG1);

 if (enable)
  config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
 else
  config1 &= ~NFC_V1_V2_CONFIG1_ECC_EN;

 writew(config1, NFC_V1_V2_CONFIG1);
}
