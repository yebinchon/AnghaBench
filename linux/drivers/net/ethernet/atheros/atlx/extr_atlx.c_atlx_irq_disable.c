
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atlx_adapter {int int_enabled; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int atlx_imr_set (struct atlx_adapter*,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void atlx_irq_disable(struct atlx_adapter *adapter)
{
 adapter->int_enabled = 0;
 atlx_imr_set(adapter, 0);
 synchronize_irq(adapter->pdev->irq);
}
