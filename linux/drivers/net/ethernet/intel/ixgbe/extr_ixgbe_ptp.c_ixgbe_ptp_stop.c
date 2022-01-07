
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {TYPE_1__* netdev; int * ptp_clock; } ;
struct TYPE_2__ {int name; } ;


 int e_dev_info (char*,int ) ;
 int ixgbe_ptp_suspend (struct ixgbe_adapter*) ;
 int ptp_clock_unregister (int *) ;

void ixgbe_ptp_stop(struct ixgbe_adapter *adapter)
{

 ixgbe_ptp_suspend(adapter);


 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  adapter->ptp_clock = ((void*)0);
  e_dev_info("removed PHC on %s\n",
      adapter->netdev->name);
 }
}
