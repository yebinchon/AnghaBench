
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {int dummy; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; int rx_errors; int rx_over_errors; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int bus_off; int error_passive; int error_warning; } ;
struct TYPE_5__ {int state; scalar_t__ restart_ms; TYPE_1__ can_stats; } ;
struct mcp251x_priv {int force_quit; int tx_len; int mcp_lock; TYPE_2__ can; struct net_device* net; struct spi_device* spi; } ;
typedef int irqreturn_t ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CANINTF ;
 int CANINTF_ERR ;
 int CANINTF_ERRIF ;
 int CANINTF_RX ;
 int CANINTF_RX0IF ;
 int CANINTF_RX1IF ;
 int CANINTF_TX ;
 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;
 int CAN_LED_EVENT_TX ;
 int CAN_STATE_BUS_OFF ;

 int CAN_STATE_ERROR_PASSIVE ;

 int EFLG ;
 int EFLG_RX0OVR ;
 int EFLG_RX1OVR ;
 int EFLG_RXEP ;
 int EFLG_RXWAR ;
 int EFLG_TXBO ;
 int EFLG_TXEP ;
 int EFLG_TXWAR ;
 int IRQ_HANDLED ;
 int can_bus_off (struct net_device*) ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int mcp251x_error_skb (struct net_device*,int,int) ;
 int mcp251x_hw_rx (struct spi_device*,int) ;
 int mcp251x_hw_sleep (struct spi_device*) ;
 scalar_t__ mcp251x_is_2510 (struct spi_device*) ;
 int mcp251x_read_2regs (struct spi_device*,int ,int*,int*) ;
 int mcp251x_write_bits (struct spi_device*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static irqreturn_t mcp251x_can_ist(int irq, void *dev_id)
{
 struct mcp251x_priv *priv = dev_id;
 struct spi_device *spi = priv->spi;
 struct net_device *net = priv->net;

 mutex_lock(&priv->mcp_lock);
 while (!priv->force_quit) {
  enum can_state new_state;
  u8 intf, eflag;
  u8 clear_intf = 0;
  int can_id = 0, data1 = 0;

  mcp251x_read_2regs(spi, CANINTF, &intf, &eflag);


  intf &= CANINTF_RX | CANINTF_TX | CANINTF_ERR;


  if (intf & CANINTF_RX0IF) {
   mcp251x_hw_rx(spi, 0);



   if (mcp251x_is_2510(spi))
    mcp251x_write_bits(spi, CANINTF,
         CANINTF_RX0IF, 0x00);
  }


  if (intf & CANINTF_RX1IF) {
   mcp251x_hw_rx(spi, 1);

   if (mcp251x_is_2510(spi))
    clear_intf |= CANINTF_RX1IF;
  }


  if (intf & (CANINTF_ERR | CANINTF_TX))
   clear_intf |= intf & (CANINTF_ERR | CANINTF_TX);
  if (clear_intf)
   mcp251x_write_bits(spi, CANINTF, clear_intf, 0x00);

  if (eflag & (EFLG_RX0OVR | EFLG_RX1OVR))
   mcp251x_write_bits(spi, EFLG, eflag, 0x00);


  if (eflag & EFLG_TXBO) {
   new_state = CAN_STATE_BUS_OFF;
   can_id |= CAN_ERR_BUSOFF;
  } else if (eflag & EFLG_TXEP) {
   new_state = CAN_STATE_ERROR_PASSIVE;
   can_id |= CAN_ERR_CRTL;
   data1 |= CAN_ERR_CRTL_TX_PASSIVE;
  } else if (eflag & EFLG_RXEP) {
   new_state = CAN_STATE_ERROR_PASSIVE;
   can_id |= CAN_ERR_CRTL;
   data1 |= CAN_ERR_CRTL_RX_PASSIVE;
  } else if (eflag & EFLG_TXWAR) {
   new_state = 128;
   can_id |= CAN_ERR_CRTL;
   data1 |= CAN_ERR_CRTL_TX_WARNING;
  } else if (eflag & EFLG_RXWAR) {
   new_state = 128;
   can_id |= CAN_ERR_CRTL;
   data1 |= CAN_ERR_CRTL_RX_WARNING;
  } else {
   new_state = 129;
  }


  switch (priv->can.state) {
  case 129:
   if (new_state >= 128 &&
       new_state <= CAN_STATE_BUS_OFF)
    priv->can.can_stats.error_warning++;

  case 128:
   if (new_state >= CAN_STATE_ERROR_PASSIVE &&
       new_state <= CAN_STATE_BUS_OFF)
    priv->can.can_stats.error_passive++;
   break;
  default:
   break;
  }
  priv->can.state = new_state;

  if (intf & CANINTF_ERRIF) {

   if (eflag & (EFLG_RX0OVR | EFLG_RX1OVR)) {
    if (eflag & EFLG_RX0OVR) {
     net->stats.rx_over_errors++;
     net->stats.rx_errors++;
    }
    if (eflag & EFLG_RX1OVR) {
     net->stats.rx_over_errors++;
     net->stats.rx_errors++;
    }
    can_id |= CAN_ERR_CRTL;
    data1 |= CAN_ERR_CRTL_RX_OVERFLOW;
   }
   mcp251x_error_skb(net, can_id, data1);
  }

  if (priv->can.state == CAN_STATE_BUS_OFF) {
   if (priv->can.restart_ms == 0) {
    priv->force_quit = 1;
    priv->can.can_stats.bus_off++;
    can_bus_off(net);
    mcp251x_hw_sleep(spi);
    break;
   }
  }

  if (intf == 0)
   break;

  if (intf & CANINTF_TX) {
   net->stats.tx_packets++;
   net->stats.tx_bytes += priv->tx_len - 1;
   can_led_event(net, CAN_LED_EVENT_TX);
   if (priv->tx_len) {
    can_get_echo_skb(net, 0);
    priv->tx_len = 0;
   }
   netif_wake_queue(net);
  }
 }
 mutex_unlock(&priv->mcp_lock);
 return IRQ_HANDLED;
}
