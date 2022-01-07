
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int state; } ;


 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 int e1000e_down (struct e1000_adapter*,int) ;
 int e1000e_up (struct e1000_adapter*) ;
 int might_sleep () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void e1000e_reinit_locked(struct e1000_adapter *adapter)
{
 might_sleep();
 while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
  usleep_range(1000, 1100);
 e1000e_down(adapter, 1);
 e1000e_up(adapter);
 clear_bit(__E1000_RESETTING, &adapter->state);
}
