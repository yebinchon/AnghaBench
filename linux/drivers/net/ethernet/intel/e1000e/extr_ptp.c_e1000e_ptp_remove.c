
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int flags; int * ptp_clock; int systim_overflow_work; } ;


 int FLAG_HAS_HW_TIMESTAMP ;
 int cancel_delayed_work_sync (int *) ;
 int e_info (char*) ;
 int ptp_clock_unregister (int *) ;

void e1000e_ptp_remove(struct e1000_adapter *adapter)
{
 if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
  return;

 cancel_delayed_work_sync(&adapter->systim_overflow_work);

 if (adapter->ptp_clock) {
  ptp_clock_unregister(adapter->ptp_clock);
  adapter->ptp_clock = ((void*)0);
  e_info("removed PHC\n");
 }
}
