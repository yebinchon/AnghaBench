
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_3__ {int int_mask; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 int INT_MASK_DISABLE ;
 int writel (int ,int *) ;

__attribute__((used)) static void et131x_disable_interrupts(struct et131x_adapter *adapter)
{
 writel(INT_MASK_DISABLE, &adapter->regs->global.int_mask);
}
