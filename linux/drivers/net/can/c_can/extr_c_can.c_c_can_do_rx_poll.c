
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct c_can_priv {int dummy; } ;


 int BUILD_BUG_ON_MSG (int,char*) ;
 int CAN_LED_EVENT_RX ;
 int C_CAN_MSG_OBJ_RX_LAST ;
 int c_can_adjust_pending (int) ;
 int c_can_get_pending (struct c_can_priv*) ;
 int c_can_read_objects (struct net_device*,struct c_can_priv*,int,int) ;
 int can_led_event (struct net_device*,int ) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int c_can_do_rx_poll(struct net_device *dev, int quota)
{
 struct c_can_priv *priv = netdev_priv(dev);
 u32 pkts = 0, pend = 0, toread, n;





 BUILD_BUG_ON_MSG(C_CAN_MSG_OBJ_RX_LAST > 16,
   "Implementation does not support more message objects than 16");

 while (quota > 0) {
  if (!pend) {
   pend = c_can_get_pending(priv);
   if (!pend)
    break;




   toread = c_can_adjust_pending(pend);
  } else {
   toread = pend;
  }

  pend &= ~toread;

  n = c_can_read_objects(dev, priv, toread, quota);
  pkts += n;
  quota -= n;
 }

 if (pkts)
  can_led_event(dev, CAN_LED_EVENT_RX);

 return pkts;
}
