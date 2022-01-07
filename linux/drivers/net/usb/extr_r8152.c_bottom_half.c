
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; int netdev; } ;


 int RTL8152_UNPLUG ;
 int SCHEDULE_TASKLET ;
 int WORK_ENABLE ;
 int clear_bit (int ,int *) ;
 int netif_carrier_ok (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int tx_bottom (struct r8152*) ;

__attribute__((used)) static void bottom_half(unsigned long data)
{
 struct r8152 *tp;

 tp = (struct r8152 *)data;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 if (!test_bit(WORK_ENABLE, &tp->flags))
  return;



 if (!netif_carrier_ok(tp->netdev))
  return;

 clear_bit(SCHEDULE_TASKLET, &tp->flags);

 tx_bottom(tp);
}
