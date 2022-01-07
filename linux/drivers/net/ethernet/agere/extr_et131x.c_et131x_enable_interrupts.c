
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {scalar_t__ flow; TYPE_2__* regs; } ;
struct TYPE_3__ {int int_mask; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 scalar_t__ FLOW_BOTH ;
 scalar_t__ FLOW_TXONLY ;
 int INT_MASK_ENABLE ;
 int INT_MASK_ENABLE_NO_FLOW ;
 int writel (int ,int *) ;

__attribute__((used)) static void et131x_enable_interrupts(struct et131x_adapter *adapter)
{
 u32 mask;

 if (adapter->flow == FLOW_TXONLY || adapter->flow == FLOW_BOTH)
  mask = INT_MASK_ENABLE;
 else
  mask = INT_MASK_ENABLE_NO_FLOW;

 writel(mask, &adapter->regs->global.int_mask);
}
