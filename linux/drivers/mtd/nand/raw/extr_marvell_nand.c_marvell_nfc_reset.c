
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marvell_nfc {scalar_t__ regs; } ;


 scalar_t__ NDCR ;
 int NDCR_ALL_INT ;
 int NDCR_ND_ARB_EN ;
 int NDCR_RD_ID_CNT (int ) ;
 int NDCR_SPARE_EN ;
 scalar_t__ NDECCCTRL ;
 scalar_t__ NDSR ;
 int NFCV1_READID_LEN ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void marvell_nfc_reset(struct marvell_nfc *nfc)
{







 writel_relaxed(NDCR_ALL_INT | NDCR_ND_ARB_EN | NDCR_SPARE_EN |
         NDCR_RD_ID_CNT(NFCV1_READID_LEN), nfc->regs + NDCR);
 writel_relaxed(0xFFFFFFFF, nfc->regs + NDSR);
 writel_relaxed(0, nfc->regs + NDECCCTRL);
}
