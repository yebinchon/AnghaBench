
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct marvell_nand_chip {int dummy; } ;
struct TYPE_2__ {int ndcb0_csel; } ;


 int NDSR_CMDD (int ) ;
 int marvell_nfc_end_cmd (struct nand_chip*,int,char*) ;
 struct marvell_nand_chip* to_marvell_nand (struct nand_chip*) ;
 TYPE_1__* to_nand_sel (struct marvell_nand_chip*) ;

__attribute__((used)) static int marvell_nfc_wait_cmdd(struct nand_chip *chip)
{
 struct marvell_nand_chip *marvell_nand = to_marvell_nand(chip);
 int cs_flag = NDSR_CMDD(to_nand_sel(marvell_nand)->ndcb0_csel);

 return marvell_nfc_end_cmd(chip, cs_flag, "CMDD");
}
