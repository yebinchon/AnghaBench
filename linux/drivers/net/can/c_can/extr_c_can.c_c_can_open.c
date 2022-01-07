
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; } ;
struct c_can_priv {int napi; } ;


 int CAN_LED_EVENT_OPEN ;
 int IRQF_SHARED ;
 int c_can_irq_control (struct c_can_priv*,int) ;
 int c_can_isr ;
 int c_can_pm_runtime_get_sync (struct c_can_priv*) ;
 int c_can_pm_runtime_put_sync (struct c_can_priv*) ;
 int c_can_reset_ram (struct c_can_priv*,int) ;
 int c_can_start (struct net_device*) ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int *,int ,int ,struct net_device*) ;

__attribute__((used)) static int c_can_open(struct net_device *dev)
{
 int err;
 struct c_can_priv *priv = netdev_priv(dev);

 c_can_pm_runtime_get_sync(priv);
 c_can_reset_ram(priv, 1);


 err = open_candev(dev);
 if (err) {
  netdev_err(dev, "failed to open can device\n");
  goto exit_open_fail;
 }


 err = request_irq(dev->irq, &c_can_isr, IRQF_SHARED, dev->name,
    dev);
 if (err < 0) {
  netdev_err(dev, "failed to request interrupt\n");
  goto exit_irq_fail;
 }


 err = c_can_start(dev);
 if (err)
  goto exit_start_fail;

 can_led_event(dev, CAN_LED_EVENT_OPEN);

 napi_enable(&priv->napi);

 c_can_irq_control(priv, 1);
 netif_start_queue(dev);

 return 0;

exit_start_fail:
 free_irq(dev->irq, dev);
exit_irq_fail:
 close_candev(dev);
exit_open_fail:
 c_can_reset_ram(priv, 0);
 c_can_pm_runtime_put_sync(priv);
 return err;
}
