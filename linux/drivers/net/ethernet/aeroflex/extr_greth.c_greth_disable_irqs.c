
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct greth_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int control; } ;


 int GRETH_REGANDIN (int ,int) ;
 int GRETH_RXI ;
 int GRETH_TXI ;

__attribute__((used)) static inline void greth_disable_irqs(struct greth_private *greth)
{
 GRETH_REGANDIN(greth->regs->control, ~(GRETH_RXI|GRETH_TXI));
}
