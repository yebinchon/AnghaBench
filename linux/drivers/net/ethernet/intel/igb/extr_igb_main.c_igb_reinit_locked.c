
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int state; } ;


 int WARN_ON (int ) ;
 int __IGB_RESETTING ;
 int clear_bit (int ,int *) ;
 int igb_down (struct igb_adapter*) ;
 int igb_up (struct igb_adapter*) ;
 int in_interrupt () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void igb_reinit_locked(struct igb_adapter *adapter)
{
 WARN_ON(in_interrupt());
 while (test_and_set_bit(__IGB_RESETTING, &adapter->state))
  usleep_range(1000, 2000);
 igb_down(adapter);
 igb_up(adapter);
 clear_bit(__IGB_RESETTING, &adapter->state);
}
