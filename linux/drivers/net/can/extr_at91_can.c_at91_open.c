
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;
struct at91_priv {int clk; int napi; } ;


 int CAN_LED_EVENT_OPEN ;
 int EAGAIN ;
 int IRQF_SHARED ;
 int at91_chip_start (struct net_device*) ;
 int at91_irq ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int close_candev (struct net_device*) ;
 int napi_enable (int *) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int at91_open(struct net_device *dev)
{
 struct at91_priv *priv = netdev_priv(dev);
 int err;

 err = clk_prepare_enable(priv->clk);
 if (err)
  return err;


 err = open_candev(dev);
 if (err)
  goto out;


 if (request_irq(dev->irq, at91_irq, IRQF_SHARED,
   dev->name, dev)) {
  err = -EAGAIN;
  goto out_close;
 }

 can_led_event(dev, CAN_LED_EVENT_OPEN);


 at91_chip_start(dev);
 napi_enable(&priv->napi);
 netif_start_queue(dev);

 return 0;

 out_close:
 close_candev(dev);
 out:
 clk_disable_unprepare(priv->clk);

 return err;
}
