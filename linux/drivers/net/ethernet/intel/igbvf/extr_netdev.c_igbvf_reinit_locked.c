
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igbvf_adapter {int state; } ;


 int __IGBVF_RESETTING ;
 int clear_bit (int ,int *) ;
 int igbvf_down (struct igbvf_adapter*) ;
 int igbvf_up (struct igbvf_adapter*) ;
 int might_sleep () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void igbvf_reinit_locked(struct igbvf_adapter *adapter)
{
 might_sleep();
 while (test_and_set_bit(__IGBVF_RESETTING, &adapter->state))
  usleep_range(1000, 2000);
 igbvf_down(adapter);
 igbvf_up(adapter);
 clear_bit(__IGBVF_RESETTING, &adapter->state);
}
