
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {int netdev; int flags; TYPE_2__* regs; } ;
struct TYPE_3__ {int pm_csr; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 int ET_PMCSR_INIT ;
 int ET_PM_PHY_SW_COMA ;
 int FMP_ADAPTER_LOWER_POWER ;
 int et131x_adapter_setup (struct et131x_adapter*) ;
 int et131x_enable_txrx (int ) ;
 int et131x_init_send (struct et131x_adapter*) ;
 int et131x_soft_reset (struct et131x_adapter*) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void et1310_disable_phy_coma(struct et131x_adapter *adapter)
{
 u32 pmcsr;

 pmcsr = readl(&adapter->regs->global.pm_csr);


 pmcsr |= ET_PMCSR_INIT;
 pmcsr &= ~ET_PM_PHY_SW_COMA;
 writel(pmcsr, &adapter->regs->global.pm_csr);






 et131x_init_send(adapter);





 et131x_soft_reset(adapter);

 et131x_adapter_setup(adapter);


 adapter->flags &= ~FMP_ADAPTER_LOWER_POWER;

 et131x_enable_txrx(adapter->netdev);
}
