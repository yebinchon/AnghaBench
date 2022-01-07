
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_PL_CAUSE ;
 scalar_t__ A_TP_INT_CAUSE ;
 int FPGA_PCIX_INTERRUPT_TP ;
 scalar_t__ FPGA_TP_ADDR_INTERRUPT_CAUSE ;
 int F_PL_INTR_TP ;
 int t1_is_asic (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

void t1_tp_intr_clear(struct petp *tp)
{
 writel(0xffffffff, tp->adapter->regs + A_TP_INT_CAUSE);
 writel(F_PL_INTR_TP, tp->adapter->regs + A_PL_CAUSE);
}
