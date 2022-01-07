
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_ecc {int lock; scalar_t__ regs; TYPE_1__* caps; } ;
typedef enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;
struct TYPE_2__ {scalar_t__* ecc_regs; } ;


 scalar_t__ ECC_CTL_REG (int) ;
 size_t ECC_DECDONE ;
 size_t ECC_DECIRQ_EN ;
 int ECC_DECODE ;
 size_t ECC_ENCIRQ_EN ;
 int ECC_ENCODE ;
 int ECC_OP_DISABLE ;
 scalar_t__ ECC_OP_ENABLE ;
 int mtk_ecc_wait_idle (struct mtk_ecc*,int) ;
 int mutex_unlock (int *) ;
 scalar_t__ readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

void mtk_ecc_disable(struct mtk_ecc *ecc)
{
 enum mtk_ecc_operation op = ECC_ENCODE;


 if (readw(ecc->regs + ECC_CTL_REG(op)) != ECC_OP_ENABLE)
  op = ECC_DECODE;


 mtk_ecc_wait_idle(ecc, op);
 if (op == ECC_DECODE) {




  readw(ecc->regs + ecc->caps->ecc_regs[ECC_DECDONE]);
  writew(0, ecc->regs + ecc->caps->ecc_regs[ECC_DECIRQ_EN]);
 } else {
  writew(0, ecc->regs + ecc->caps->ecc_regs[ECC_ENCIRQ_EN]);
 }

 writew(ECC_OP_DISABLE, ecc->regs + ECC_CTL_REG(op));

 mutex_unlock(&ecc->lock);
}
