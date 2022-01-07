
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int irq; int dev; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int hi3110_lock; int transceiver; int wq; int restart_work; int tx_work; scalar_t__ tx_len; int * tx_skb; scalar_t__ force_quit; struct spi_device* spi; } ;


 int CAN_LED_EVENT_OPEN ;
 int DEVICE_NAME ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_TRIGGER_HIGH ;
 int WQ_FREEZABLE ;
 int WQ_MEM_RECLAIM ;
 int alloc_workqueue (char*,int,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*,int ) ;
 int free_irq (int ,struct hi3110_priv*) ;
 int hi3110_can_ist ;
 int hi3110_hw_reset (struct spi_device*) ;
 int hi3110_hw_sleep (struct spi_device*) ;
 int hi3110_power_enable (int ,int) ;
 int hi3110_restart_work_handler ;
 int hi3110_set_normal_mode (struct spi_device*) ;
 int hi3110_setup (struct net_device*) ;
 int hi3110_tx_work_handler ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hi3110_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_threaded_irq (int ,int *,int ,unsigned long,int ,struct hi3110_priv*) ;

__attribute__((used)) static int hi3110_open(struct net_device *net)
{
 struct hi3110_priv *priv = netdev_priv(net);
 struct spi_device *spi = priv->spi;
 unsigned long flags = IRQF_ONESHOT | IRQF_TRIGGER_HIGH;
 int ret;

 ret = open_candev(net);
 if (ret)
  return ret;

 mutex_lock(&priv->hi3110_lock);
 hi3110_power_enable(priv->transceiver, 1);

 priv->force_quit = 0;
 priv->tx_skb = ((void*)0);
 priv->tx_len = 0;

 ret = request_threaded_irq(spi->irq, ((void*)0), hi3110_can_ist,
       flags, DEVICE_NAME, priv);
 if (ret) {
  dev_err(&spi->dev, "failed to acquire irq %d\n", spi->irq);
  goto out_close;
 }

 priv->wq = alloc_workqueue("hi3110_wq", WQ_FREEZABLE | WQ_MEM_RECLAIM,
       0);
 if (!priv->wq) {
  ret = -ENOMEM;
  goto out_free_irq;
 }
 INIT_WORK(&priv->tx_work, hi3110_tx_work_handler);
 INIT_WORK(&priv->restart_work, hi3110_restart_work_handler);

 ret = hi3110_hw_reset(spi);
 if (ret)
  goto out_free_wq;

 ret = hi3110_setup(net);
 if (ret)
  goto out_free_wq;

 ret = hi3110_set_normal_mode(spi);
 if (ret)
  goto out_free_wq;

 can_led_event(net, CAN_LED_EVENT_OPEN);
 netif_wake_queue(net);
 mutex_unlock(&priv->hi3110_lock);

 return 0;

 out_free_wq:
 destroy_workqueue(priv->wq);
 out_free_irq:
 free_irq(spi->irq, priv);
 hi3110_hw_sleep(spi);
 out_close:
 hi3110_power_enable(priv->transceiver, 0);
 close_candev(net);
 mutex_unlock(&priv->hi3110_lock);
 return ret;
}
