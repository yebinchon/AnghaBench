
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_TP_INT_CAUSE ;
 int readl (scalar_t__) ;
 int t1_is_asic (TYPE_1__*) ;
 int writel (int ,scalar_t__) ;

int t1_tp_intr_handler(struct petp *tp)
{
 u32 cause;







 cause = readl(tp->adapter->regs + A_TP_INT_CAUSE);
 writel(cause, tp->adapter->regs + A_TP_INT_CAUSE);
 return 0;
}
