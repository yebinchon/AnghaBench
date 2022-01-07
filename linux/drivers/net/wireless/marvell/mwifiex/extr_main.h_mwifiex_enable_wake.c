
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {scalar_t__ irq_wakeup; int wake_by_wifi; } ;


 int enable_irq (scalar_t__) ;
 int enable_irq_wake (scalar_t__) ;

__attribute__((used)) static inline void mwifiex_enable_wake(struct mwifiex_adapter *adapter)
{

 if (adapter->irq_wakeup >= 0) {
  adapter->wake_by_wifi = 0;
  enable_irq(adapter->irq_wakeup);
  enable_irq_wake(adapter->irq_wakeup);
 }
}
