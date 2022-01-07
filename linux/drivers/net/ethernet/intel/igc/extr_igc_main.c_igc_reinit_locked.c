
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_adapter {int state; } ;


 int WARN_ON (int ) ;
 int __IGC_RESETTING ;
 int clear_bit (int ,int *) ;
 int igc_down (struct igc_adapter*) ;
 int igc_up (struct igc_adapter*) ;
 int in_interrupt () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void igc_reinit_locked(struct igc_adapter *adapter)
{
 WARN_ON(in_interrupt());
 while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
  usleep_range(1000, 2000);
 igc_down(adapter);
 igc_up(adapter);
 clear_bit(__IGC_RESETTING, &adapter->state);
}
