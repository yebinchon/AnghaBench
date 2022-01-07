
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpsw_sl {scalar_t__* regs; scalar_t__ sl_base; int dev; } ;
typedef enum cpsw_sl_regs { ____Placeholder_cpsw_sl_regs } cpsw_sl_regs ;


 scalar_t__ CPSW_SL_REG_NOTUSED ;
 int dev_dbg (int ,char*,scalar_t__,int) ;
 int dev_err (int ,char*,scalar_t__) ;
 int readl (scalar_t__) ;

u32 cpsw_sl_reg_read(struct cpsw_sl *sl, enum cpsw_sl_regs reg)
{
 int val;

 if (sl->regs[reg] == CPSW_SL_REG_NOTUSED) {
  dev_err(sl->dev, "cpsw_sl: not sup r reg: %04X\n",
   sl->regs[reg]);
  return 0;
 }

 val = readl(sl->sl_base + sl->regs[reg]);
 dev_dbg(sl->dev, "cpsw_sl: reg: %04X r 0x%08X\n", sl->regs[reg], val);
 return val;
}
