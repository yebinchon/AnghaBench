
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_3__ {int pm_csr; } ;
struct TYPE_4__ {TYPE_1__ global; } ;


 int ET_PM_PHY_SW_COMA ;
 int readl (int *) ;

__attribute__((used)) static int et1310_in_phy_coma(struct et131x_adapter *adapter)
{
 u32 pmcsr = readl(&adapter->regs->global.pm_csr);

 return ET_PM_PHY_SW_COMA & pmcsr ? 1 : 0;
}
