
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_sl {scalar_t__* regs; scalar_t__ sl_base; int dev; } ;
typedef enum cpsw_sl_regs { ____Placeholder_cpsw_sl_regs } cpsw_sl_regs ;


 scalar_t__ CPSW_SL_REG_NOTUSED ;
 int dev_dbg (int ,char*,scalar_t__,int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int writel (int ,scalar_t__) ;

void cpsw_sl_reg_write(struct cpsw_sl *sl, enum cpsw_sl_regs reg, u32 val)
{
 if (sl->regs[reg] == CPSW_SL_REG_NOTUSED) {
  dev_err(sl->dev, "cpsw_sl: not sup w reg: %04X\n",
   sl->regs[reg]);
  return;
 }

 dev_dbg(sl->dev, "cpsw_sl: reg: %04X w 0x%08X\n", sl->regs[reg], val);
 writel(val, sl->sl_base + sl->regs[reg]);
}
