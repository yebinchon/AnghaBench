
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct c_can_priv {int napi; } ;


 int CAN_LED_EVENT_STOP ;
 int c_can_pm_runtime_put_sync (struct c_can_priv*) ;
 int c_can_reset_ram (struct c_can_priv*,int) ;
 int c_can_stop (struct net_device*) ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int c_can_close(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&priv->napi);
 c_can_stop(dev);
 free_irq(dev->irq, dev);
 close_candev(dev);

 c_can_reset_ram(priv, 0);
 c_can_pm_runtime_put_sync(priv);

 can_led_event(dev, CAN_LED_EVENT_STOP);

 return 0;
}
