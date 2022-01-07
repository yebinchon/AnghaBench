
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int ptp_flags; int ptp_overflow_work; int tmreg_lock; int cc; int tc; int pps_sys_wrap_on; struct e1000_hw hw; int tstamp_config; } ;


 int E1000_IMS ;
 int E1000_IMS_TS ;
 int E1000_TIMINCA ;
 int E1000_TSAUXC ;
 int E1000_TSIM ;
 int E1000_TSSDP ;
 int IGB_PTP_OVERFLOW_CHECK ;
 int IGB_SYSTIM_OVERFLOW_PERIOD ;
 int INCPERIOD_82576 ;
 int INCVALUE_82576 ;
 int TSINTR_SYS_WRAP ;
 int TSYNC_INTERRUPTS ;






 int igb_ptp_set_timestamp_mode (struct igb_adapter*,int *) ;
 int igb_ptp_write_i210 (struct igb_adapter*,struct timespec64*) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_init (int *,int *,int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

void igb_ptp_reset(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 unsigned long flags;


 igb_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);

 spin_lock_irqsave(&adapter->tmreg_lock, flags);

 switch (adapter->hw.mac.type) {
 case 133:

  wr32(E1000_TIMINCA, INCPERIOD_82576 | INCVALUE_82576);
  break;
 case 132:
 case 128:
 case 129:
 case 131:
 case 130:
  wr32(E1000_TSAUXC, 0x0);
  wr32(E1000_TSSDP, 0x0);
  wr32(E1000_TSIM,
       TSYNC_INTERRUPTS |
       (adapter->pps_sys_wrap_on ? TSINTR_SYS_WRAP : 0));
  wr32(E1000_IMS, E1000_IMS_TS);
  break;
 default:

  goto out;
 }


 if ((hw->mac.type == 131) || (hw->mac.type == 130)) {
  struct timespec64 ts = ktime_to_timespec64(ktime_get_real());

  igb_ptp_write_i210(adapter, &ts);
 } else {
  timecounter_init(&adapter->tc, &adapter->cc,
     ktime_to_ns(ktime_get_real()));
 }
out:
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

 wrfl();

 if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
  schedule_delayed_work(&adapter->ptp_overflow_work,
          IGB_SYSTIM_OVERFLOW_PERIOD);
}
