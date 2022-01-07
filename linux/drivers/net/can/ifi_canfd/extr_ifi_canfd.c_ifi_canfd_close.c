
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct ifi_canfd_priv {int napi; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int ifi_canfd_stop (struct net_device*) ;
 int napi_disable (int *) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ifi_canfd_close(struct net_device *ndev)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 napi_disable(&priv->napi);

 ifi_canfd_stop(ndev);

 free_irq(ndev->irq, ndev);

 close_candev(ndev);

 can_led_event(ndev, CAN_LED_EVENT_STOP);

 return 0;
}
