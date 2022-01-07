
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct be_adapter {int dummy; } ;


 int be_max_rx_irqs (struct be_adapter*) ;
 int be_max_tx_irqs (struct be_adapter*) ;
 int max (int ,int ) ;

__attribute__((used)) static inline u16 be_max_any_irqs(struct be_adapter *adapter)
{
 return max(be_max_tx_irqs(adapter), be_max_rx_irqs(adapter));
}
