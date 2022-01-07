
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; int * data; } ;
struct can_berr_counter {int rxerr; int txerr; } ;
struct TYPE_3__ {int bus_off; int restarts; int error_passive; int error_warning; } ;
struct TYPE_4__ {int state; int restart_ms; TYPE_1__ can_stats; } ;
struct at91_priv {TYPE_2__ can; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int AT91_IDR ;
 int AT91_IER ;
 int AT91_IRQ_BOFF ;
 int AT91_IRQ_ERRA ;
 int AT91_IRQ_ERRP ;
 int AT91_IRQ_WARN ;
 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_ACTIVE ;
 int CAN_ERR_RESTARTED ;




 int at91_chip_stop (struct net_device*,int const) ;
 int at91_get_berr_counter (struct net_device*,struct can_berr_counter*) ;
 int at91_write (struct at91_priv*,int ,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void at91_irq_err_state(struct net_device *dev,
  struct can_frame *cf, enum can_state new_state)
{
 struct at91_priv *priv = netdev_priv(dev);
 u32 reg_idr = 0, reg_ier = 0;
 struct can_berr_counter bec;

 at91_get_berr_counter(dev, &bec);

 switch (priv->can.state) {
 case 130:





  if (new_state >= 128 &&
      new_state <= 131) {
   netdev_dbg(dev, "Error Warning IRQ\n");
   priv->can.can_stats.error_warning++;

   cf->can_id |= CAN_ERR_CRTL;
   cf->data[1] = (bec.txerr > bec.rxerr) ?
    CAN_ERR_CRTL_TX_WARNING :
    CAN_ERR_CRTL_RX_WARNING;
  }

 case 128:





  if (new_state >= 129 &&
      new_state <= 131) {
   netdev_dbg(dev, "Error Passive IRQ\n");
   priv->can.can_stats.error_passive++;

   cf->can_id |= CAN_ERR_CRTL;
   cf->data[1] = (bec.txerr > bec.rxerr) ?
    CAN_ERR_CRTL_TX_PASSIVE :
    CAN_ERR_CRTL_RX_PASSIVE;
  }
  break;
 case 131:




  if (new_state <= 129) {
   cf->can_id |= CAN_ERR_RESTARTED;

   netdev_dbg(dev, "restarted\n");
   priv->can.can_stats.restarts++;

   netif_carrier_on(dev);
   netif_wake_queue(dev);
  }
  break;
 default:
  break;
 }



 switch (new_state) {
 case 130:






  netdev_dbg(dev, "Error Active\n");
  cf->can_id |= CAN_ERR_PROT;
  cf->data[2] = CAN_ERR_PROT_ACTIVE;

 case 128:
  reg_idr = AT91_IRQ_ERRA | AT91_IRQ_WARN | AT91_IRQ_BOFF;
  reg_ier = AT91_IRQ_ERRP;
  break;
 case 129:
  reg_idr = AT91_IRQ_ERRA | AT91_IRQ_WARN | AT91_IRQ_ERRP;
  reg_ier = AT91_IRQ_BOFF;
  break;
 case 131:
  reg_idr = AT91_IRQ_ERRA | AT91_IRQ_ERRP |
   AT91_IRQ_WARN | AT91_IRQ_BOFF;
  reg_ier = 0;

  cf->can_id |= CAN_ERR_BUSOFF;

  netdev_dbg(dev, "bus-off\n");
  netif_carrier_off(dev);
  priv->can.can_stats.bus_off++;


  if (!priv->can.restart_ms) {
   at91_chip_stop(dev, 131);
   return;
  }
  break;
 default:
  break;
 }

 at91_write(priv, AT91_IDR, reg_idr);
 at91_write(priv, AT91_IER, reg_ier);
}
