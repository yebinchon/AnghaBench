
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ irq_wakeup; scalar_t__ wake_by_wifi; } ;


 int disable_irq (scalar_t__) ;
 int disable_irq_wake (scalar_t__) ;
 int enable_irq (scalar_t__) ;

__attribute__((used)) static inline void mwifiex_disable_wake(struct mwifiex_adapter *adapter)
{
 if (adapter->irq_wakeup >= 0) {
  disable_irq_wake(adapter->irq_wakeup);
  disable_irq(adapter->irq_wakeup);
  if (adapter->wake_by_wifi)



   enable_irq(adapter->irq_wakeup);

 }
}
