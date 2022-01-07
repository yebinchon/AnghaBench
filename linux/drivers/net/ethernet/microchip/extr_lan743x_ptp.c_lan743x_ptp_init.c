
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_ptp {int perout_event_ch; int perout_gpio_bit; scalar_t__ used_event_ch; int tx_ts_lock; int command_lock; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int lan743x_ptp_init(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 mutex_init(&ptp->command_lock);
 spin_lock_init(&ptp->tx_ts_lock);
 ptp->used_event_ch = 0;
 ptp->perout_event_ch = -1;
 ptp->perout_gpio_bit = -1;
 return 0;
}
