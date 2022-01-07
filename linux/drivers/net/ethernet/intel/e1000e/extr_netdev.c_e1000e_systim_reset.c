
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ptp_clock_info {scalar_t__ (* adjfreq ) (struct ptp_clock_info*,int ) ;} ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; int hwtstamp_config; int systim_lock; int cc; int tc; TYPE_1__* pdev; int ptp_delta; struct e1000_hw hw; struct ptp_clock_info ptp_clock_info; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int dev; } ;


 int FLAG_HAS_HW_TIMESTAMP ;
 int TIMINCA ;
 int dev_warn (int *,char*,scalar_t__) ;
 int e1000e_config_hwtstamp (struct e1000_adapter*,int *) ;
 scalar_t__ e1000e_get_base_timinca (struct e1000_adapter*,int *) ;
 int ew32 (int ,int ) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct ptp_clock_info*,int ) ;
 int timecounter_init (int *,int *,int ) ;

__attribute__((used)) static void e1000e_systim_reset(struct e1000_adapter *adapter)
{
 struct ptp_clock_info *info = &adapter->ptp_clock_info;
 struct e1000_hw *hw = &adapter->hw;
 unsigned long flags;
 u32 timinca;
 s32 ret_val;

 if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
  return;

 if (info->adjfreq) {

  ret_val = info->adjfreq(info, adapter->ptp_delta);
 } else {

  ret_val = e1000e_get_base_timinca(adapter, &timinca);
  if (!ret_val)
   ew32(TIMINCA, timinca);
 }

 if (ret_val) {
  dev_warn(&adapter->pdev->dev,
    "Failed to restore TIMINCA clock rate delta: %d\n",
    ret_val);
  return;
 }


 spin_lock_irqsave(&adapter->systim_lock, flags);
 timecounter_init(&adapter->tc, &adapter->cc,
    ktime_to_ns(ktime_get_real()));
 spin_unlock_irqrestore(&adapter->systim_lock, flags);


 e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
}
