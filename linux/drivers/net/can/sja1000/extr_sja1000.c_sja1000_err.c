
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int arbitration_lost; int bus_error; } ;
struct TYPE_4__ {int state; TYPE_1__ can_stats; } ;
struct sja1000_priv {unsigned int (* read_reg ) (struct sja1000_priv*,int ) ;TYPE_2__ can; } ;
struct net_device_stats {int rx_bytes; int rx_packets; int tx_errors; int rx_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {unsigned int* data; int can_id; scalar_t__ can_dlc; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_ERR_BUSERROR ;
 int CAN_ERR_CRTL ;
 unsigned int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_LOSTARB ;
 int CAN_ERR_PROT ;
 unsigned int CAN_ERR_PROT_BIT ;
 unsigned int CAN_ERR_PROT_FORM ;
 unsigned int CAN_ERR_PROT_STUFF ;
 int CAN_ERR_PROT_TX ;
 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 int CMD_CDO ;

 int ECC_DIR ;

 int ECC_MASK ;
 int ECC_SEG ;

 int ENOMEM ;
 int IRQ_ALI ;
 int IRQ_BEI ;
 int IRQ_DOI ;
 int IRQ_EI ;
 int IRQ_EPI ;
 int SJA1000_ALC ;
 int SJA1000_ECC ;
 int SJA1000_RXERR ;
 int SJA1000_TXERR ;
 int SR_BS ;
 int SR_ES ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int can_change_state (struct net_device*,struct can_frame*,int,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int sja1000_write_cmdreg (struct sja1000_priv*,int ) ;
 unsigned int stub1 (struct sja1000_priv*,int ) ;
 unsigned int stub2 (struct sja1000_priv*,int ) ;
 int stub3 (struct sja1000_priv*,int ) ;
 int stub4 (struct sja1000_priv*,int ) ;

__attribute__((used)) static int sja1000_err(struct net_device *dev, uint8_t isrc, uint8_t status)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 struct net_device_stats *stats = &dev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 enum can_state state = priv->can.state;
 enum can_state rx_state, tx_state;
 unsigned int rxerr, txerr;
 uint8_t ecc, alc;

 skb = alloc_can_err_skb(dev, &cf);
 if (skb == ((void*)0))
  return -ENOMEM;

 txerr = priv->read_reg(priv, SJA1000_TXERR);
 rxerr = priv->read_reg(priv, SJA1000_RXERR);

 cf->data[6] = txerr;
 cf->data[7] = rxerr;

 if (isrc & IRQ_DOI) {

  netdev_dbg(dev, "data overrun interrupt\n");
  cf->can_id |= CAN_ERR_CRTL;
  cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
  stats->rx_over_errors++;
  stats->rx_errors++;
  sja1000_write_cmdreg(priv, CMD_CDO);
 }

 if (isrc & IRQ_EI) {

  netdev_dbg(dev, "error warning interrupt\n");

  if (status & SR_BS)
   state = CAN_STATE_BUS_OFF;
  else if (status & SR_ES)
   state = CAN_STATE_ERROR_WARNING;
  else
   state = CAN_STATE_ERROR_ACTIVE;
 }
 if (isrc & IRQ_BEI) {

  priv->can.can_stats.bus_error++;
  stats->rx_errors++;

  ecc = priv->read_reg(priv, SJA1000_ECC);

  cf->can_id |= CAN_ERR_PROT | CAN_ERR_BUSERROR;


  switch (ecc & ECC_MASK) {
  case 130:
   cf->data[2] |= CAN_ERR_PROT_BIT;
   break;
  case 129:
   cf->data[2] |= CAN_ERR_PROT_FORM;
   break;
  case 128:
   cf->data[2] |= CAN_ERR_PROT_STUFF;
   break;
  default:
   break;
  }


  cf->data[3] = ecc & ECC_SEG;


  if ((ecc & ECC_DIR) == 0)
   cf->data[2] |= CAN_ERR_PROT_TX;
 }
 if (isrc & IRQ_EPI) {

  netdev_dbg(dev, "error passive interrupt\n");

  if (state == CAN_STATE_ERROR_PASSIVE)
   state = CAN_STATE_ERROR_WARNING;
  else
   state = CAN_STATE_ERROR_PASSIVE;
 }
 if (isrc & IRQ_ALI) {

  netdev_dbg(dev, "arbitration lost interrupt\n");
  alc = priv->read_reg(priv, SJA1000_ALC);
  priv->can.can_stats.arbitration_lost++;
  stats->tx_errors++;
  cf->can_id |= CAN_ERR_LOSTARB;
  cf->data[0] = alc & 0x1f;
 }

 if (state != priv->can.state) {
  tx_state = txerr >= rxerr ? state : 0;
  rx_state = txerr <= rxerr ? state : 0;

  can_change_state(dev, cf, tx_state, rx_state);

  if(state == CAN_STATE_BUS_OFF)
   can_bus_off(dev);
 }

 stats->rx_packets++;
 stats->rx_bytes += cf->can_dlc;
 netif_rx(skb);

 return 0;
}
