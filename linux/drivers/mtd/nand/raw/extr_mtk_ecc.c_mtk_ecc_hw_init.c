
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_ecc {scalar_t__ regs; } ;


 scalar_t__ ECC_DECCON ;
 int ECC_DECODE ;
 scalar_t__ ECC_ENCCON ;
 int ECC_ENCODE ;
 int ECC_OP_DISABLE ;
 int mtk_ecc_wait_idle (struct mtk_ecc*,int ) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void mtk_ecc_hw_init(struct mtk_ecc *ecc)
{
 mtk_ecc_wait_idle(ecc, ECC_ENCODE);
 writew(ECC_OP_DISABLE, ecc->regs + ECC_ENCCON);

 mtk_ecc_wait_idle(ecc, ECC_DECODE);
 writel(ECC_OP_DISABLE, ecc->regs + ECC_DECCON);
}
