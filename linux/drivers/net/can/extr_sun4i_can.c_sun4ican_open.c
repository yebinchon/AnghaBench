
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4ican_priv {int clk; } ;
struct net_device {int irq; int name; } ;


 int CAN_LED_EVENT_OPEN ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int sun4i_can_interrupt ;
 int sun4i_can_start (struct net_device*) ;

__attribute__((used)) static int sun4ican_open(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 int err;


 err = open_candev(dev);
 if (err)
  return err;


 err = request_irq(dev->irq, sun4i_can_interrupt, 0, dev->name, dev);
 if (err) {
  netdev_err(dev, "request_irq err: %d\n", err);
  goto exit_irq;
 }


 err = clk_prepare_enable(priv->clk);
 if (err) {
  netdev_err(dev, "could not enable CAN peripheral clock\n");
  goto exit_clock;
 }

 err = sun4i_can_start(dev);
 if (err) {
  netdev_err(dev, "could not start CAN peripheral\n");
  goto exit_can_start;
 }

 can_led_event(dev, CAN_LED_EVENT_OPEN);
 netif_start_queue(dev);

 return 0;

exit_can_start:
 clk_disable_unprepare(priv->clk);
exit_clock:
 free_irq(dev->irq, dev);
exit_irq:
 close_candev(dev);
 return err;
}
