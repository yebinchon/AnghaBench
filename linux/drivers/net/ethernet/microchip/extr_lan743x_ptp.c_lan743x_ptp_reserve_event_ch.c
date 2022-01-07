
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_ptp {int command_lock; int used_event_ch; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 int BIT (int) ;
 int ENODEV ;
 int LAN743X_PTP_NUMBER_OF_EVENT_CHANNELS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int,int *) ;

__attribute__((used)) static int lan743x_ptp_reserve_event_ch(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 int result = -ENODEV;
 int index = 0;

 mutex_lock(&ptp->command_lock);
 for (index = 0; index < LAN743X_PTP_NUMBER_OF_EVENT_CHANNELS; index++) {
  if (!(test_bit(index, &ptp->used_event_ch))) {
   ptp->used_event_ch |= BIT(index);
   result = index;
   break;
  }
 }
 mutex_unlock(&ptp->command_lock);
 return result;
}
