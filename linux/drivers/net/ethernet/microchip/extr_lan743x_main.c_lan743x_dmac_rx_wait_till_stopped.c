
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int dummy; } ;


 int DMAC_CHANNEL_STATE_STOP_PENDING ;
 int ENODEV ;
 int lan743x_dmac_rx_get_state (struct lan743x_adapter*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan743x_dmac_rx_wait_till_stopped(struct lan743x_adapter *adapter,
          int rx_channel)
{
 int timeout = 100;
 int result = 0;

 while (timeout &&
        ((result = lan743x_dmac_rx_get_state(adapter, rx_channel)) ==
        DMAC_CHANNEL_STATE_STOP_PENDING)) {
  usleep_range(1000, 20000);
  timeout--;
 }
 if (result == DMAC_CHANNEL_STATE_STOP_PENDING)
  result = -ENODEV;
 return result;
}
