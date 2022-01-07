
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_adapter {int irq_sem; } ;


 int atl1c_irq_enable (struct atl1c_adapter*) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline void atl1c_irq_reset(struct atl1c_adapter *adapter)
{
 atomic_set(&adapter->irq_sem, 1);
 atl1c_irq_enable(adapter);
}
