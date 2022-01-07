
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tp_params {int dummy; } ;
struct petp {TYPE_1__* adapter; } ;
struct TYPE_3__ {scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_TP_RESET ;
 int F_TP_RESET ;
 int tp_init (TYPE_1__*,struct tp_params*,unsigned int) ;
 int writel (int ,scalar_t__) ;

int t1_tp_reset(struct petp *tp, struct tp_params *p, unsigned int tp_clk)
{
 adapter_t *adapter = tp->adapter;

 tp_init(adapter, p, tp_clk);
 writel(F_TP_RESET, adapter->regs + A_TP_RESET);
 return 0;
}
