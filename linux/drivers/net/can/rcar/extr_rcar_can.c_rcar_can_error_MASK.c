#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_off; int /*<<< orphan*/  error_passive; int /*<<< orphan*/  error_warning; int /*<<< orphan*/  bus_error; } ;
struct TYPE_5__ {TYPE_1__ can_stats; int /*<<< orphan*/  state; } ;
struct rcar_can_priv {int ier; TYPE_3__* regs; int /*<<< orphan*/  ndev; TYPE_2__ can; } ;
struct net_device_stats {int tx_errors; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; scalar_t__ rx_errors; int /*<<< orphan*/  rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct can_frame {int can_id; int* data; scalar_t__ can_dlc; } ;
struct TYPE_6__ {int /*<<< orphan*/  eifr; int /*<<< orphan*/  ier; int /*<<< orphan*/  ecsr; int /*<<< orphan*/  recr; int /*<<< orphan*/  tecr; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  CAN_STATE_BUS_OFF ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_PASSIVE ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_WARNING ; 
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
 struct sk_buff* FUNC0 (struct net_device*,struct can_frame**) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rcar_can_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *ndev)
{
	struct rcar_can_priv *priv = FUNC3(ndev);
	struct net_device_stats *stats = &ndev->stats;
	struct can_frame *cf;
	struct sk_buff *skb;
	u8 eifr, txerr = 0, rxerr = 0;

	/* Propagate the error condition to the CAN stack */
	skb = FUNC0(ndev, &cf);

	eifr = FUNC5(&priv->regs->eifr);
	if (eifr & (RCAR_CAN_EIFR_EWIF | RCAR_CAN_EIFR_EPIF)) {
		txerr = FUNC5(&priv->regs->tecr);
		rxerr = FUNC5(&priv->regs->recr);
		if (skb) {
			cf->can_id |= CAN_ERR_CRTL;
			cf->data[6] = txerr;
			cf->data[7] = rxerr;
		}
	}
	if (eifr & RCAR_CAN_EIFR_BEIF) {
		int rx_errors = 0, tx_errors = 0;
		u8 ecsr;

		FUNC2(priv->ndev, "Bus error interrupt:\n");
		if (skb)
			cf->can_id |= CAN_ERR_BUSERROR | CAN_ERR_PROT;

		ecsr = FUNC5(&priv->regs->ecsr);
		if (ecsr & RCAR_CAN_ECSR_ADEF) {
			FUNC2(priv->ndev, "ACK Delimiter Error\n");
			tx_errors++;
			FUNC7(~RCAR_CAN_ECSR_ADEF, &priv->regs->ecsr);
			if (skb)
				cf->data[3] = CAN_ERR_PROT_LOC_ACK_DEL;
		}
		if (ecsr & RCAR_CAN_ECSR_BE0F) {
			FUNC2(priv->ndev, "Bit Error (dominant)\n");
			tx_errors++;
			FUNC7(~RCAR_CAN_ECSR_BE0F, &priv->regs->ecsr);
			if (skb)
				cf->data[2] |= CAN_ERR_PROT_BIT0;
		}
		if (ecsr & RCAR_CAN_ECSR_BE1F) {
			FUNC2(priv->ndev, "Bit Error (recessive)\n");
			tx_errors++;
			FUNC7(~RCAR_CAN_ECSR_BE1F, &priv->regs->ecsr);
			if (skb)
				cf->data[2] |= CAN_ERR_PROT_BIT1;
		}
		if (ecsr & RCAR_CAN_ECSR_CEF) {
			FUNC2(priv->ndev, "CRC Error\n");
			rx_errors++;
			FUNC7(~RCAR_CAN_ECSR_CEF, &priv->regs->ecsr);
			if (skb)
				cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
		}
		if (ecsr & RCAR_CAN_ECSR_AEF) {
			FUNC2(priv->ndev, "ACK Error\n");
			tx_errors++;
			FUNC7(~RCAR_CAN_ECSR_AEF, &priv->regs->ecsr);
			if (skb) {
				cf->can_id |= CAN_ERR_ACK;
				cf->data[3] = CAN_ERR_PROT_LOC_ACK;
			}
		}
		if (ecsr & RCAR_CAN_ECSR_FEF) {
			FUNC2(priv->ndev, "Form Error\n");
			rx_errors++;
			FUNC7(~RCAR_CAN_ECSR_FEF, &priv->regs->ecsr);
			if (skb)
				cf->data[2] |= CAN_ERR_PROT_FORM;
		}
		if (ecsr & RCAR_CAN_ECSR_SEF) {
			FUNC2(priv->ndev, "Stuff Error\n");
			rx_errors++;
			FUNC7(~RCAR_CAN_ECSR_SEF, &priv->regs->ecsr);
			if (skb)
				cf->data[2] |= CAN_ERR_PROT_STUFF;
		}

		priv->can.can_stats.bus_error++;
		ndev->stats.rx_errors += rx_errors;
		ndev->stats.tx_errors += tx_errors;
		FUNC7(~RCAR_CAN_EIFR_BEIF, &priv->regs->eifr);
	}
	if (eifr & RCAR_CAN_EIFR_EWIF) {
		FUNC2(priv->ndev, "Error warning interrupt\n");
		priv->can.state = CAN_STATE_ERROR_WARNING;
		priv->can.can_stats.error_warning++;
		/* Clear interrupt condition */
		FUNC7(~RCAR_CAN_EIFR_EWIF, &priv->regs->eifr);
		if (skb)
			cf->data[1] = txerr > rxerr ? CAN_ERR_CRTL_TX_WARNING :
					      CAN_ERR_CRTL_RX_WARNING;
	}
	if (eifr & RCAR_CAN_EIFR_EPIF) {
		FUNC2(priv->ndev, "Error passive interrupt\n");
		priv->can.state = CAN_STATE_ERROR_PASSIVE;
		priv->can.can_stats.error_passive++;
		/* Clear interrupt condition */
		FUNC7(~RCAR_CAN_EIFR_EPIF, &priv->regs->eifr);
		if (skb)
			cf->data[1] = txerr > rxerr ? CAN_ERR_CRTL_TX_PASSIVE :
					      CAN_ERR_CRTL_RX_PASSIVE;
	}
	if (eifr & RCAR_CAN_EIFR_BOEIF) {
		FUNC2(priv->ndev, "Bus-off entry interrupt\n");
		FUNC6(ndev);
		priv->ier = RCAR_CAN_IER_ERSIE;
		FUNC7(priv->ier, &priv->regs->ier);
		priv->can.state = CAN_STATE_BUS_OFF;
		/* Clear interrupt condition */
		FUNC7(~RCAR_CAN_EIFR_BOEIF, &priv->regs->eifr);
		priv->can.can_stats.bus_off++;
		FUNC1(ndev);
		if (skb)
			cf->can_id |= CAN_ERR_BUSOFF;
	}
	if (eifr & RCAR_CAN_EIFR_ORIF) {
		FUNC2(priv->ndev, "Receive overrun error interrupt\n");
		ndev->stats.rx_over_errors++;
		ndev->stats.rx_errors++;
		FUNC7(~RCAR_CAN_EIFR_ORIF, &priv->regs->eifr);
		if (skb) {
			cf->can_id |= CAN_ERR_CRTL;
			cf->data[1] = CAN_ERR_CRTL_RX_OVERFLOW;
		}
	}
	if (eifr & RCAR_CAN_EIFR_OLIF) {
		FUNC2(priv->ndev,
			   "Overload Frame Transmission error interrupt\n");
		ndev->stats.rx_over_errors++;
		ndev->stats.rx_errors++;
		FUNC7(~RCAR_CAN_EIFR_OLIF, &priv->regs->eifr);
		if (skb) {
			cf->can_id |= CAN_ERR_PROT;
			cf->data[2] |= CAN_ERR_PROT_OVERLOAD;
		}
	}

	if (skb) {
		stats->rx_packets++;
		stats->rx_bytes += cf->can_dlc;
		FUNC4(skb);
	}
}