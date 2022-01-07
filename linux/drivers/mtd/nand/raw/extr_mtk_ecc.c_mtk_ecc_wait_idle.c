
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_ecc {scalar_t__ regs; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;


 int ECC_ENCODE ;
 int ECC_IDLE_MASK ;
 scalar_t__ ECC_IDLE_REG (int) ;
 int ECC_TIMEOUT ;
 int dev_warn (struct device*,char*,char*) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static inline void mtk_ecc_wait_idle(struct mtk_ecc *ecc,
         enum mtk_ecc_operation op)
{
 struct device *dev = ecc->dev;
 u32 val;
 int ret;

 ret = readl_poll_timeout_atomic(ecc->regs + ECC_IDLE_REG(op), val,
     val & ECC_IDLE_MASK,
     10, ECC_TIMEOUT);
 if (ret)
  dev_warn(dev, "%s NOT idle\n",
    op == ECC_ENCODE ? "encoder" : "decoder");
}
