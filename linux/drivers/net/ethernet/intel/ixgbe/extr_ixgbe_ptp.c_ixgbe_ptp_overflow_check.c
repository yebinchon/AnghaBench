
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {scalar_t__ last_overflow_check; int tmreg_lock; int hw_tc; } ;


 scalar_t__ IXGBE_OVERFLOW_PERIOD ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_is_before_jiffies (scalar_t__) ;
 int timecounter_read (int *) ;

void ixgbe_ptp_overflow_check(struct ixgbe_adapter *adapter)
{
 bool timeout = time_is_before_jiffies(adapter->last_overflow_check +
          IXGBE_OVERFLOW_PERIOD);
 unsigned long flags;

 if (timeout) {

  spin_lock_irqsave(&adapter->tmreg_lock, flags);
  timecounter_read(&adapter->hw_tc);
  spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

  adapter->last_overflow_check = jiffies;
 }
}
