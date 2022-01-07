
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mtk_ecc_config {int op; scalar_t__ mode; } ;
struct mtk_ecc {scalar_t__ regs; TYPE_1__* caps; int done; int lock; int dev; } ;
typedef enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;
struct TYPE_2__ {scalar_t__* ecc_regs; scalar_t__ pg_irq_sel; } ;


 scalar_t__ ECC_CTL_REG (int) ;
 size_t ECC_DECIRQ_EN ;
 size_t ECC_ENCIRQ_EN ;
 int ECC_ENCODE ;
 int ECC_IRQ_EN ;
 scalar_t__ ECC_NFI_MODE ;
 int ECC_OP_ENABLE ;
 int ECC_PG_IRQ_SEL ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 int mtk_ecc_config (struct mtk_ecc*,struct mtk_ecc_config*) ;
 int mtk_ecc_wait_idle (struct mtk_ecc*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int writew (int ,scalar_t__) ;

int mtk_ecc_enable(struct mtk_ecc *ecc, struct mtk_ecc_config *config)
{
 enum mtk_ecc_operation op = config->op;
 u16 reg_val;
 int ret;

 ret = mutex_lock_interruptible(&ecc->lock);
 if (ret) {
  dev_err(ecc->dev, "interrupted when attempting to lock\n");
  return ret;
 }

 mtk_ecc_wait_idle(ecc, op);

 ret = mtk_ecc_config(ecc, config);
 if (ret) {
  mutex_unlock(&ecc->lock);
  return ret;
 }

 if (config->mode != ECC_NFI_MODE || op != ECC_ENCODE) {
  init_completion(&ecc->done);
  reg_val = ECC_IRQ_EN;





  if (ecc->caps->pg_irq_sel && config->mode == ECC_NFI_MODE)
   reg_val |= ECC_PG_IRQ_SEL;
  if (op == ECC_ENCODE)
   writew(reg_val, ecc->regs +
          ecc->caps->ecc_regs[ECC_ENCIRQ_EN]);
  else
   writew(reg_val, ecc->regs +
          ecc->caps->ecc_regs[ECC_DECIRQ_EN]);
 }

 writew(ECC_OP_ENABLE, ecc->regs + ECC_CTL_REG(op));

 return 0;
}
