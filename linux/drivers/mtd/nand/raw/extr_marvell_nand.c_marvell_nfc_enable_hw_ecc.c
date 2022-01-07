
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ algo; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;
struct marvell_nfc {scalar_t__ regs; } ;


 scalar_t__ NAND_ECC_BCH ;
 scalar_t__ NDCR ;
 int NDCR_ECC_EN ;
 scalar_t__ NDECCCTRL ;
 int NDECCCTRL_BCH_EN ;
 int readl_relaxed (scalar_t__) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void marvell_nfc_enable_hw_ecc(struct nand_chip *chip)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 ndcr = readl_relaxed(nfc->regs + NDCR);

 if (!(ndcr & NDCR_ECC_EN)) {
  writel_relaxed(ndcr | NDCR_ECC_EN, nfc->regs + NDCR);





  if (chip->ecc.algo == NAND_ECC_BCH)
   writel_relaxed(NDECCCTRL_BCH_EN, nfc->regs + NDECCCTRL);
 }
}
