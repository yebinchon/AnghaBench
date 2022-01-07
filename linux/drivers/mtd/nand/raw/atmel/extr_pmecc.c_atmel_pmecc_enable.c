
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int eaddr; int saddr; int sarea; int cfg; } ;
struct atmel_pmecc_user {TYPE_1__ cache; struct atmel_pmecc* pmecc; } ;
struct TYPE_4__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_2__ regs; int lock; int dev; } ;


 scalar_t__ ATMEL_PMECC_CFG ;
 scalar_t__ ATMEL_PMECC_CTRL ;
 scalar_t__ ATMEL_PMECC_EADDR ;
 scalar_t__ ATMEL_PMECC_SADDR ;
 scalar_t__ ATMEL_PMECC_SAREA ;
 int EINVAL ;
 int NAND_ECC_READ ;
 int NAND_ECC_WRITE ;
 int PMECC_CFG_AUTO_ENABLE ;
 int PMECC_CFG_WRITE_OP ;
 int PMECC_CTRL_DATA ;
 int PMECC_CTRL_ENABLE ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int writel (int ,scalar_t__) ;

int atmel_pmecc_enable(struct atmel_pmecc_user *user, int op)
{
 struct atmel_pmecc *pmecc = user->pmecc;
 u32 cfg;

 if (op != NAND_ECC_READ && op != NAND_ECC_WRITE) {
  dev_err(pmecc->dev, "Bad ECC operation!");
  return -EINVAL;
 }

 mutex_lock(&user->pmecc->lock);

 cfg = user->cache.cfg;
 if (op == NAND_ECC_WRITE)
  cfg |= PMECC_CFG_WRITE_OP;
 else
  cfg |= PMECC_CFG_AUTO_ENABLE;

 writel(cfg, pmecc->regs.base + ATMEL_PMECC_CFG);
 writel(user->cache.sarea, pmecc->regs.base + ATMEL_PMECC_SAREA);
 writel(user->cache.saddr, pmecc->regs.base + ATMEL_PMECC_SADDR);
 writel(user->cache.eaddr, pmecc->regs.base + ATMEL_PMECC_EADDR);

 writel(PMECC_CTRL_ENABLE, pmecc->regs.base + ATMEL_PMECC_CTRL);
 writel(PMECC_CTRL_DATA, pmecc->regs.base + ATMEL_PMECC_CTRL);

 return 0;
}
