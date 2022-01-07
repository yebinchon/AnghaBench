
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int regs; } ;


 int smc501_readl (int ) ;

__attribute__((used)) static void sm501_sync_regs(struct sm501_devdata *sm)
{
 smc501_readl(sm->regs);
}
