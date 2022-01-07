
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int irq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mcp251x_priv {int force_quit; int mcp_lock; TYPE_1__ can; int transceiver; int * wq; struct spi_device* spi; } ;


 int CANINTE ;
 int CANINTF ;
 int CAN_LED_EVENT_STOP ;
 int CAN_STATE_STOPPED ;
 int TXBCTRL (int ) ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int destroy_workqueue (int *) ;
 int free_irq (int ,struct mcp251x_priv*) ;
 int mcp251x_clean (struct net_device*) ;
 int mcp251x_hw_sleep (struct spi_device*) ;
 int mcp251x_power_enable (int ,int ) ;
 int mcp251x_write_reg (struct spi_device*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mcp251x_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mcp251x_stop(struct net_device *net)
{
 struct mcp251x_priv *priv = netdev_priv(net);
 struct spi_device *spi = priv->spi;

 close_candev(net);

 priv->force_quit = 1;
 free_irq(spi->irq, priv);
 destroy_workqueue(priv->wq);
 priv->wq = ((void*)0);

 mutex_lock(&priv->mcp_lock);


 mcp251x_write_reg(spi, CANINTE, 0x00);
 mcp251x_write_reg(spi, CANINTF, 0x00);

 mcp251x_write_reg(spi, TXBCTRL(0), 0);
 mcp251x_clean(net);

 mcp251x_hw_sleep(spi);

 mcp251x_power_enable(priv->transceiver, 0);

 priv->can.state = CAN_STATE_STOPPED;

 mutex_unlock(&priv->mcp_lock);

 can_led_event(net, CAN_LED_EVENT_STOP);

 return 0;
}
