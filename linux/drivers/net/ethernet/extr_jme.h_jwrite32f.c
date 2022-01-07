
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct jme_adapter {scalar_t__ regs; } ;


 scalar_t__ readl (scalar_t__) ;
 int reg_dbg (struct jme_adapter*,char*,scalar_t__,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void jwrite32f(struct jme_adapter *jme, u32 reg, u32 val)
{



 reg_dbg(jme, "REG WRITE FLUSH", val, reg);
 writel(val, jme->regs + reg);
 readl(jme->regs + reg);
 reg_dbg(jme, "VAL AFTER WRITE", readl(jme->regs + reg), reg);
}
