
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {scalar_t__ regs; } ;


 scalar_t__ GREG_IMASK ;
 int GREG_STAT_TXDONE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gem_enable_ints(struct gem *gp)
{

 writel(GREG_STAT_TXDONE, gp->regs + GREG_IMASK);
}
