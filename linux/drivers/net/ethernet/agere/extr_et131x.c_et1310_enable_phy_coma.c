
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {TYPE_2__* regs; int netdev; int flags; } ;
struct TYPE_3__ {int pm_csr; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 int ET_PMCSR_INIT ;
 int ET_PM_PHY_SW_COMA ;
 int FMP_ADAPTER_LOWER_POWER ;
 int et131x_disable_txrx (int ) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void et1310_enable_phy_coma(struct et131x_adapter *adapter)
{
 u32 pmcsr = readl(&adapter->regs->global.pm_csr);


 adapter->flags |= FMP_ADAPTER_LOWER_POWER;


 et131x_disable_txrx(adapter->netdev);


 pmcsr &= ~ET_PMCSR_INIT;
 writel(pmcsr, &adapter->regs->global.pm_csr);


 pmcsr |= ET_PM_PHY_SW_COMA;
 writel(pmcsr, &adapter->regs->global.pm_csr);
}
