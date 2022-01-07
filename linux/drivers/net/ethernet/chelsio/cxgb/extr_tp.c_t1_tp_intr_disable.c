
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_PL_ENABLE ;
 scalar_t__ A_TP_INT_ENABLE ;
 int FPGA_PCIX_INTERRUPT_TP ;
 scalar_t__ FPGA_TP_ADDR_INTERRUPT_ENABLE ;
 int F_PL_INTR_TP ;
 int readl (scalar_t__) ;
 int t1_is_asic (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

void t1_tp_intr_disable(struct petp *tp)
{
 u32 tp_intr = readl(tp->adapter->regs + A_PL_ENABLE);
 {
  writel(0, tp->adapter->regs + A_TP_INT_ENABLE);
  writel(tp_intr & ~F_PL_INTR_TP,
         tp->adapter->regs + A_PL_ENABLE);
 }
}
