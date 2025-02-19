
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemini_ethernet {int initialized; int freeq_order; int freeq_frag_order; scalar_t__ base; scalar_t__ port1; scalar_t__ port0; } ;


 int DEFAULT_RX_BUF_ORDER ;
 scalar_t__ GLOBAL_HWFQ_RWPTR_REG ;
 scalar_t__ GLOBAL_HW_FREEQ_BASE_SIZE_REG ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_0_REG ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_1_REG ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_2_REG ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_3_REG ;
 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ;
 scalar_t__ GLOBAL_INTERRUPT_SELECT_0_REG ;
 scalar_t__ GLOBAL_INTERRUPT_SELECT_1_REG ;
 scalar_t__ GLOBAL_INTERRUPT_SELECT_2_REG ;
 scalar_t__ GLOBAL_INTERRUPT_SELECT_3_REG ;
 scalar_t__ GLOBAL_INTERRUPT_SELECT_4_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_0_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_1_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_2_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_3_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ;
 scalar_t__ GLOBAL_SWFQ_RWPTR_REG ;
 scalar_t__ GLOBAL_SW_FREEQ_BASE_SIZE_REG ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gemini_ethernet_init(struct gemini_ethernet *geth)
{

 if (geth->initialized)
  return;
 if (geth->port0 && geth->port1)
  geth->initialized = 1;
 else
  return;

 writel(0, geth->base + GLOBAL_INTERRUPT_ENABLE_0_REG);
 writel(0, geth->base + GLOBAL_INTERRUPT_ENABLE_1_REG);
 writel(0, geth->base + GLOBAL_INTERRUPT_ENABLE_2_REG);
 writel(0, geth->base + GLOBAL_INTERRUPT_ENABLE_3_REG);
 writel(0, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 writel(0xCCFC0FC0, geth->base + GLOBAL_INTERRUPT_SELECT_0_REG);
 writel(0x00F00002, geth->base + GLOBAL_INTERRUPT_SELECT_1_REG);
 writel(0xFFFFFFFF, geth->base + GLOBAL_INTERRUPT_SELECT_2_REG);
 writel(0xFFFFFFFF, geth->base + GLOBAL_INTERRUPT_SELECT_3_REG);
 writel(0xFF000003, geth->base + GLOBAL_INTERRUPT_SELECT_4_REG);


 writel(~0, geth->base + GLOBAL_INTERRUPT_STATUS_0_REG);
 writel(~0, geth->base + GLOBAL_INTERRUPT_STATUS_1_REG);
 writel(~0, geth->base + GLOBAL_INTERRUPT_STATUS_2_REG);
 writel(~0, geth->base + GLOBAL_INTERRUPT_STATUS_3_REG);
 writel(~0, geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);


 writel(0, geth->base + GLOBAL_SW_FREEQ_BASE_SIZE_REG);
 writel(0, geth->base + GLOBAL_HW_FREEQ_BASE_SIZE_REG);
 writel(0, geth->base + GLOBAL_SWFQ_RWPTR_REG);
 writel(0, geth->base + GLOBAL_HWFQ_RWPTR_REG);

 geth->freeq_frag_order = DEFAULT_RX_BUF_ORDER;



 geth->freeq_order = 1;
}
