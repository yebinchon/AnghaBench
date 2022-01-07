
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int bus_off; int error_passive; int error_warning; int bus_error; } ;
struct TYPE_5__ {TYPE_1__ can_stats; int state; } ;
struct rcar_can_priv {int ier; TYPE_3__* regs; int ndev; TYPE_2__ can; } ;
struct net_device_stats {int tx_errors; int rx_bytes; int rx_packets; scalar_t__ rx_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int* data; scalar_t__ can_dlc; } ;
struct TYPE_6__ {int eifr; int ier; int ecsr; int recr; int tecr; } ;


 int CAN_ERR_ACK ;
 int CAN_ERR_BUSERROR ;
 int CAN_ERR_BUSOFF ;
 int CAN_ERR_CRTL ;
 int CAN_ERR_CRTL_RX_OVERFLOW ;
 int CAN_ERR_CRTL_RX_PASSIVE ;
 int CAN_ERR_CRTL_RX_WARNING ;
 int CAN_ERR_CRTL_TX_PASSIVE ;
 int CAN_ERR_CRTL_TX_WARNING ;
 int CAN_ERR_PROT ;
 int CAN_ERR_PROT_BIT0 ;
 int CAN_ERR_PROT_BIT1 ;
 int CAN_ERR_PROT_FORM ;
 int CAN_ERR_PROT_LOC_ACK ;
 int CAN_ERR_PROT_LOC_ACK_DEL ;
 int CAN_ERR_PROT_LOC_CRC_SEQ ;
 int CAN_ERR_PROT_OVERLOAD ;
 int CAN_ERR_PROT_STUFF ;
 int CAN_STATE_BUS_OFF ;
 int CAN_STATE_ERROR_PASSIVE ;
 int CAN_STATE_ERROR_WARNING ;
 int RCAR_CAN_ECSR_ADEF ;
 int RCAR_CAN_ECSR_AEF ;
 int RCAR_CAN_ECSR_BE0F ;
 int RCAR_CAN_ECSR_BE1F ;
 int RCAR_CAN_ECSR_CEF ;
 int RCAR_CAN_ECSR_FEF ;
 int RCAR_CAN_ECSR_SEF ;
 int RCAR_CAN_EIFR_BEIF ;
 int RCAR_CAN_EIFR_BOEIF ;
 int RCAR_CAN_EIFR_EPIF ;
 int RCAR_CAN_EIFR_EWIF ;
 int RCAR_CAN_EIFR_OLIF ;
 int RCAR_CAN_EIFR_ORIF ;
 int RCAR_CAN_IER_ERSIE ;
 struct sk_buff* alloc_can_err_skb (struct net_device*,struct can_frame**) ;
 int can_bus_off (struct net_device*) ;
 int netdev_dbg (int ,char*) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int readb (int *) ;
 int tx_failure_cleanup (struct net_device*) ;
 int writeb (int,int *) ;

__attribute__((used)) static void rcar_can_error(struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);
 struct net_device_stats *stats = &ndev->stats;
 struct can_frame *cf;
 struct sk_buff *skb;
 u8 eifr, txerr = 0, rxerr = 0;


 skb = alloc_can_err_skb(ndev, &cf);

 eifr = readb(&priv->regs->eifr);
 if (eifr & (RCAR_CAN_EIFR_EWIF | RCAR_CAN_EIFR_EPIF)) {
  txerr = readb(&priv->regs->tecr);
  rxerr = readb(&priv->regs->recr);
  if (skb) {
   cf->can_id |= CAN_ERR_CRTL;
   cf->data[6] = txerr;
   cf->data[7] = rxerr;
  }
 }
 if (eifr & RCAR_CAN_EIFR_BEIF) {
  int rx_errors = 0, tx_errors = 0;
  u8 ecsr;

  netdev_dbg(priv->ndev, "Bus error interrupt:\n");
  if (skb)
   cf->can_id |= CAN_ERR_BUSERROR | CAN_ERR_PROT;

  ecsr = readb(&priv->regs->ecsr);
  if (ecsr & RCAR_CAN_ECSR_ADEF) {
   netdev_dbg(priv->ndev, "ACK Delimiter Error\n");
   tx_errors++;
   writeb(~RCAR_CAN_ECSR_ADEF, &priv->regs->ecsr);
   if (skb)
    cf->data[3] = CAN_ERR_PROT_LOC_ACK_DEL;
  }
  if (ecsr & RCAR_CAN_ECSR_BE0F) {
   netdev_dbg(priv->ndev, "Bit Error (dominant)\n");
   tx_errors++;
   writeb(~RCAR_CAN_ECSR_BE0F, &priv->regs->ecsr);
   if (skb)
    cf->data[2] |= CAN_ERR_PROT_BIT0;
  }
  if (ecsr & RCAR_CAN_ECSR_BE1F) {
   netdev_dbg(priv->ndev, "Bit Error (recessive)\n");
   tx_errors++;
   writeb(~RCAR_CAN_ECSR_BE1F, &priv->regs->ecsr);
   if (skb)
    cf->data[2] |= CAN_ERR_PROT_BIT1;
  }
  if (ecsr & RCAR_CAN_ECSR_CEF) {
   netdev_dbg(priv->ndev, "CRC Error\n");
   rx_errors++;
   writeb(~RCAR_CAN_ECSR_CEF, &priv->regs->ecsr);
   if (skb)
    cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
  }
  if (ecsr & RCAR_CAN_ECSR_AEF) {
   netdev_dbg(priv->ndev, "ACK Error\n");
   tx_errors++;
   writeb(~RCAR_CAN_ECSR_AEF, &priv->regs->ecsr);
   if (skb) {
    cf->can_id |= CAN_ERR_ACK;
    cf->data[3] = CAN_ERR_PROT_LOC_ACK;
   }
  }
  if (ecsr & RCAR_CAN_ECSR_FEF) {
   netdev_dbg(priv->ndev, "Form Error\n");
   rx_errors++;
   writeb(~RCAR_CAN_ECSR_FEF, &priv->regs->ecsr);
   if (skb)
    cf->data[2] |= CAN_ERR_PROT_FORM;
  }
  if (ecsr & RCAR_CAN_ECSR_SEF) {
   netdev_dbg(priv->ndev, "Stuff Error\n");
   rx_errors++;
   writeb(~RCAR_CAN_ECSR_SEF, &priv->regs->ecsr);
   if (skb)
    cf->data[2] |= CAN_ERR_PROT_STUFF;
  }

  priv->can.can_stats.bus_error++;
  ndev->stats.rx_errors += rx_errors;
  ndev->stats.tx_errors += tx_errors;
  writeb(~RCAR_CAN_EIFR_BEIF, &priv->regs->eifr);
 }
 if (eifr & RCAR_CAN_EIFR_EWIF) {
  netdev_dbg(priv->ndev, "Error warning interrupt\n");
  priv->can.state = CAN_STATE_ERROR_WARNING;
  priv->can.can_stats.error_warning++;

  writeb(~RCAR_CAN_EIFR_EWIF, &priv->regs->eifr);
  if (skb)
   cf->data[1] = txerr > rxerr ? CAN_ERR_CRTL_TX_WARNING :
           CAN_ERR_CRTL_RX_WARNING;
 }
 if (eifr & RCAR_CAN_EIFR_EPIF) {
  netdev_dbg(priv->ndev, "Error passive interrupt\n");
  priv->can.state = CAN_STATE_ERROR_PASSIVE;
  priv->can.can_stats.error_passive++;

  writeb(~RCAR_CAN_EIFR_EPIF, &priv->regs->eifr);
  if (skb)
   cf->data[1] = txerr > rxerr ? CAN_ERR_CRTL_TX_PASSIVE :
           CAN_ERR_CRTL_RX_PASSIVE;
 }
 if (eifr & RCAR_CAN_EIFR_BOEIF) {
  netdev_dbg(priv->ndev, "Bus-off entry interrupt\n");
  tx_failure_cleanup(ndev);
  priv->ier = RCAR_CAN_IER_ERSIE;
  writeb(priv->ier, &priv->regs->ier);
  priv->can.state = CAN_STATE_BUS_OFF;

  writeb(~RCAR_CAN_EIFR_BOEIF, &priv->regs->eifr);
  priv->can.can_stats.bus_off++;
  can_bus_off(ndev);
  if (skb)
   cf->can_id |= CAN_ERR_BUSOFF;
 }
 if (eifr & RCAR_CAN_EIFR_ORIF) {
  netdev_dbg(priv->ndev, "Receive overrun error interrupt\n");
  ndev->stats.rx_over_errors++;
  ndev->stats.rx_errors++;
  writeb(~RCAR_CAN_EIFR_ORIF, &priv->regs->eifr);
  if (skb) {
   cf->can_id |= CAN_ERR_CRTL;
   cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
  }
 }
 if (eifr & RCAR_CAN_EIFR_OLIF) {
  netdev_dbg(priv->ndev,
      "Overload Frame Transmission error interrupt\n");
  ndev->stats.rx_over_errors++;
  ndev->stats.rx_errors++;
  writeb(~RCAR_CAN_EIFR_OLIF, &priv->regs->eifr);
  if (skb) {
   cf->can_id |= CAN_ERR_PROT;
   cf->data[2] |= CAN_ERR_PROT_OVERLOAD;
  }
 }

 if (skb) {
  stats->rx_packets++;
  stats->rx_bytes += cf->can_dlc;
  netif_rx(skb);
 }
}
