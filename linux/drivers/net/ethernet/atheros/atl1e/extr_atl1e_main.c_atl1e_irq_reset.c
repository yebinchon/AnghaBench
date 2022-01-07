
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_adapter {int hw; int irq_sem; } ;


 int AT_WRITE_FLUSH (int *) ;
 int AT_WRITE_REG (int *,int ,int ) ;
 int REG_IMR ;
 int REG_ISR ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static inline void atl1e_irq_reset(struct atl1e_adapter *adapter)
{
 atomic_set(&adapter->irq_sem, 0);
 AT_WRITE_REG(&adapter->hw, REG_ISR, 0);
 AT_WRITE_REG(&adapter->hw, REG_IMR, 0);
 AT_WRITE_FLUSH(&adapter->hw);
}
