
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {scalar_t__ msix_entries; int state; } ;


 int __E1000_DOWN ;
 int clear_bit (int ,int *) ;
 int e1000_configure (struct e1000_adapter*) ;
 int e1000_configure_msix (struct e1000_adapter*) ;
 int e1000_irq_enable (struct e1000_adapter*) ;
 int e1000e_trigger_lsc (struct e1000_adapter*) ;

void e1000e_up(struct e1000_adapter *adapter)
{

 e1000_configure(adapter);

 clear_bit(__E1000_DOWN, &adapter->state);

 if (adapter->msix_entries)
  e1000_configure_msix(adapter);
 e1000_irq_enable(adapter);



 e1000e_trigger_lsc(adapter);
}
