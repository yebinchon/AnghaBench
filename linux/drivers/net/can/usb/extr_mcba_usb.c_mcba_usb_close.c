
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mcba_priv {TYPE_1__ can; } ;


 int CAN_LED_EVENT_STOP ;
 int CAN_STATE_STOPPED ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int mcba_urb_unlink (struct mcba_priv*) ;
 struct mcba_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int mcba_usb_close(struct net_device *netdev)
{
 struct mcba_priv *priv = netdev_priv(netdev);

 priv->can.state = CAN_STATE_STOPPED;

 netif_stop_queue(netdev);


 mcba_urb_unlink(priv);

 close_candev(netdev);
 can_led_event(netdev, CAN_LED_EVENT_STOP);

 return 0;
}
