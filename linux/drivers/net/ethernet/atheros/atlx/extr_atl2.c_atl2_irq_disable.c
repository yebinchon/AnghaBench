
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atl2_adapter {TYPE_1__* pdev; int hw; } ;
struct TYPE_2__ {int irq; } ;


 int ATL2_WRITE_FLUSH (int *) ;
 int ATL2_WRITE_REG (int *,int ,int ) ;
 int REG_IMR ;
 int synchronize_irq (int ) ;

__attribute__((used)) static inline void atl2_irq_disable(struct atl2_adapter *adapter)
{
    ATL2_WRITE_REG(&adapter->hw, REG_IMR, 0);
    ATL2_WRITE_FLUSH(&adapter->hw);
    synchronize_irq(adapter->pdev->irq);
}
