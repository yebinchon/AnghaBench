
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int dummy; } ;


 int igc_free_q_vectors (struct igc_adapter*) ;
 int igc_reset_interrupt_capability (struct igc_adapter*) ;

__attribute__((used)) static void igc_clear_interrupt_scheme(struct igc_adapter *adapter)
{
 igc_free_q_vectors(adapter);
 igc_reset_interrupt_capability(adapter);
}
