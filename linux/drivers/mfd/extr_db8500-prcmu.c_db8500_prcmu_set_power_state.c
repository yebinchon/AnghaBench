
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int lock; } ;


 int BUG_ON (int) ;
 int MB0H_POWER_STATE_TRANS ;
 int MBOX_BIT (int ) ;
 scalar_t__ PRCMU_AP_DEEP_IDLE ;
 scalar_t__ PRCMU_AP_SLEEP ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB0 ;
 scalar_t__ PRCM_REQ_MB0_AP_PLL_STATE ;
 scalar_t__ PRCM_REQ_MB0_AP_POWER_STATE ;
 scalar_t__ PRCM_REQ_MB0_DO_NOT_WFI ;
 scalar_t__ PRCM_REQ_MB0_ULP_CLOCK_STATE ;
 int cpu_relax () ;
 TYPE_1__ mb0_transfer ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tcdm_base ;
 int writeb (int,scalar_t__) ;
 int writel (int,int ) ;

int db8500_prcmu_set_power_state(u8 state, bool keep_ulp_clk, bool keep_ap_pll)
{
 unsigned long flags;

 BUG_ON((state < PRCMU_AP_SLEEP) || (PRCMU_AP_DEEP_IDLE < state));

 spin_lock_irqsave(&mb0_transfer.lock, flags);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(0))
  cpu_relax();

 writeb(MB0H_POWER_STATE_TRANS, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB0));
 writeb(state, (tcdm_base + PRCM_REQ_MB0_AP_POWER_STATE));
 writeb((keep_ap_pll ? 1 : 0), (tcdm_base + PRCM_REQ_MB0_AP_PLL_STATE));
 writeb((keep_ulp_clk ? 1 : 0),
  (tcdm_base + PRCM_REQ_MB0_ULP_CLOCK_STATE));
 writeb(0, (tcdm_base + PRCM_REQ_MB0_DO_NOT_WFI));
 writel(MBOX_BIT(0), PRCM_MBOX_CPU_SET);

 spin_unlock_irqrestore(&mb0_transfer.lock, flags);

 return 0;
}
