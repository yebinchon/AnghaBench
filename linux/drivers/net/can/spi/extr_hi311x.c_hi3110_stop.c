
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct hi3110_priv {int force_quit; int hi3110_lock; TYPE_1__ can; int transceiver; int * wq; struct spi_device* spi; } ;


 int CAN_LED_EVENT_STOP ;
 int CAN_STATE_STOPPED ;
 int HI3110_READ_INTF ;
 int HI3110_WRITE_CTRL1 ;
 int HI3110_WRITE_INTE ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int destroy_workqueue (int *) ;
 int free_irq (int ,struct hi3110_priv*) ;
 int hi3110_clean (struct net_device*) ;
 int hi3110_hw_sleep (struct spi_device*) ;
 int hi3110_power_enable (int ,int ) ;
 int hi3110_read (struct spi_device*,int ) ;
 int hi3110_write (struct spi_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hi3110_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hi3110_stop(struct net_device *net)
{
 struct hi3110_priv *priv = netdev_priv(net);
 struct spi_device *spi = priv->spi;

 close_candev(net);

 priv->force_quit = 1;
 free_irq(spi->irq, priv);
 destroy_workqueue(priv->wq);
 priv->wq = ((void*)0);

 mutex_lock(&priv->hi3110_lock);


 hi3110_write(spi, HI3110_WRITE_CTRL1, 0x0);
 hi3110_write(spi, HI3110_WRITE_INTE, 0x0);
 hi3110_read(spi, HI3110_READ_INTF);

 hi3110_clean(net);

 hi3110_hw_sleep(spi);

 hi3110_power_enable(priv->transceiver, 0);

 priv->can.state = CAN_STATE_STOPPED;

 mutex_unlock(&priv->hi3110_lock);

 can_led_event(net, CAN_LED_EVENT_STOP);

 return 0;
}
