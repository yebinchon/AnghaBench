
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int options; int controller; } ;
struct marvell_nfc {scalar_t__ regs; } ;


 int NAND_BUSWIDTH_16 ;
 scalar_t__ NDCR ;
 int NDCR_DWIDTH_C ;
 int NDCR_DWIDTH_M ;
 int readl_relaxed (scalar_t__) ;
 struct marvell_nfc* to_marvell_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void marvell_nfc_force_byte_access(struct nand_chip *chip,
       bool force_8bit)
{
 struct marvell_nfc *nfc = to_marvell_nfc(chip->controller);
 u32 ndcr;







 if (!(chip->options & NAND_BUSWIDTH_16))
  return;

 ndcr = readl_relaxed(nfc->regs + NDCR);

 if (force_8bit)
  ndcr &= ~(NDCR_DWIDTH_M | NDCR_DWIDTH_C);
 else
  ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;

 writel_relaxed(ndcr, nfc->regs + NDCR);
}
