
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_clock_event {int type; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int ptp_clock; struct ixgbe_hw hw; } ;


 int PTP_CLOCK_PPS ;

 int ptp_clock_event (int ,struct ptp_clock_event*) ;

void ixgbe_ptp_check_pps_event(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ptp_clock_event event;

 event.type = PTP_CLOCK_PPS;





 if (!adapter->ptp_clock)
  return;

 switch (hw->mac.type) {
 case 128:
  ptp_clock_event(adapter->ptp_clock, &event);
  break;
 default:
  break;
 }
}
