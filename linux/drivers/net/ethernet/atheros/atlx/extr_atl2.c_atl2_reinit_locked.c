
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl2_adapter {int flags; } ;


 int WARN_ON (int ) ;
 int __ATL2_RESETTING ;
 int atl2_down (struct atl2_adapter*) ;
 int atl2_up (struct atl2_adapter*) ;
 int clear_bit (int ,int *) ;
 int in_interrupt () ;
 int msleep (int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void atl2_reinit_locked(struct atl2_adapter *adapter)
{
 WARN_ON(in_interrupt());
 while (test_and_set_bit(__ATL2_RESETTING, &adapter->flags))
  msleep(1);
 atl2_down(adapter);
 atl2_up(adapter);
 clear_bit(__ATL2_RESETTING, &adapter->flags);
}
