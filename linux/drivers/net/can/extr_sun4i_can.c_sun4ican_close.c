
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4ican_priv {int clk; } ;
struct net_device {int irq; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sun4i_can_stop (struct net_device*) ;

__attribute__((used)) static int sun4ican_close(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);

 netif_stop_queue(dev);
 sun4i_can_stop(dev);
 clk_disable_unprepare(priv->clk);

 free_irq(dev->irq, dev);
 close_candev(dev);
 can_led_event(dev, CAN_LED_EVENT_STOP);

 return 0;
}
