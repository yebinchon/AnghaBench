
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mcba_priv {int can_speed_check; TYPE_1__ can; } ;


 int CAN_LED_EVENT_OPEN ;
 int CAN_STATE_ERROR_ACTIVE ;
 int can_led_event (struct net_device*,int ) ;
 struct mcba_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;

__attribute__((used)) static int mcba_usb_open(struct net_device *netdev)
{
 struct mcba_priv *priv = netdev_priv(netdev);
 int err;


 err = open_candev(netdev);
 if (err)
  return err;

 priv->can_speed_check = 1;
 priv->can.state = CAN_STATE_ERROR_ACTIVE;

 can_led_event(netdev, CAN_LED_EVENT_OPEN);
 netif_start_queue(netdev);

 return 0;
}
