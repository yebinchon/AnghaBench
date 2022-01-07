
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {TYPE_3__* regs; } ;
struct TYPE_5__ {int cfg1; } ;
struct TYPE_4__ {int sw_reset; } ;
struct TYPE_6__ {TYPE_2__ mac; TYPE_1__ global; } ;


 int ET_MAC_CFG1_RESET_RXFUNC ;
 int ET_MAC_CFG1_RESET_RXMC ;
 int ET_MAC_CFG1_RESET_TXFUNC ;
 int ET_MAC_CFG1_RESET_TXMC ;
 int ET_MAC_CFG1_SIM_RESET ;
 int ET_MAC_CFG1_SOFT_RESET ;
 int ET_RESET_ALL ;
 int writel (int,int *) ;

__attribute__((used)) static void et131x_soft_reset(struct et131x_adapter *adapter)
{
 u32 reg;


 reg = ET_MAC_CFG1_SOFT_RESET | ET_MAC_CFG1_SIM_RESET |
       ET_MAC_CFG1_RESET_RXMC | ET_MAC_CFG1_RESET_TXMC |
       ET_MAC_CFG1_RESET_RXFUNC | ET_MAC_CFG1_RESET_TXFUNC;
 writel(reg, &adapter->regs->mac.cfg1);

 reg = ET_RESET_ALL;
 writel(reg, &adapter->regs->global.sw_reset);

 reg = ET_MAC_CFG1_RESET_RXMC | ET_MAC_CFG1_RESET_TXMC |
       ET_MAC_CFG1_RESET_RXFUNC | ET_MAC_CFG1_RESET_TXFUNC;
 writel(reg, &adapter->regs->mac.cfg1);
 writel(0, &adapter->regs->mac.cfg1);
}
