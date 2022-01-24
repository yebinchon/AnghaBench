#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ state; } ;
struct ti_hecc_priv {scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ use_hecc1int; int /*<<< orphan*/  offload; int /*<<< orphan*/  mbx_lock; TYPE_1__ can; int /*<<< orphan*/  ndev; } ;
struct net_device_stats {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int CAN_STATE_BUS_OFF ; 
 scalar_t__ CAN_STATE_ERROR_ACTIVE ; 
 int CAN_STATE_ERROR_PASSIVE ; 
 int CAN_STATE_ERROR_WARNING ; 
 int /*<<< orphan*/  HECC_CANES ; 
 int HECC_CANES_FLAGS ; 
 int /*<<< orphan*/  HECC_CANGIF0 ; 
 int /*<<< orphan*/  HECC_CANGIF1 ; 
 int HECC_CANGIF_BOIF ; 
 int HECC_CANGIF_EPIF ; 
 int HECC_CANGIF_GMIF ; 
 int HECC_CANGIF_WLIF ; 
 int /*<<< orphan*/  HECC_CANGIM ; 
 int HECC_CANGIM_DEF_MASK ; 
 int /*<<< orphan*/  HECC_CANME ; 
 int /*<<< orphan*/  HECC_CANREC ; 
 int /*<<< orphan*/  HECC_CANRMP ; 
 int /*<<< orphan*/  HECC_CANTA ; 
 int /*<<< orphan*/  HECC_CANTEC ; 
 int HECC_TX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct ti_hecc_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ti_hecc_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ti_hecc_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct ti_hecc_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,int,int) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	struct net_device *ndev = (struct net_device *)dev_id;
	struct ti_hecc_priv *priv = FUNC11(ndev);
	struct net_device_stats *stats = &ndev->stats;
	u32 mbxno, mbx_mask, int_status, err_status, stamp;
	unsigned long flags, rx_pending;
	u32 handled = 0;

	int_status = FUNC7(priv,
			       priv->use_hecc1int ?
			       HECC_CANGIF1 : HECC_CANGIF0);

	if (!int_status)
		return IRQ_NONE;

	err_status = FUNC7(priv, HECC_CANES);
	if (FUNC17(err_status & HECC_CANES_FLAGS))
		FUNC16(ndev, int_status, err_status);

	if (FUNC17(int_status & HECC_CANGIM_DEF_MASK)) {
		enum can_state rx_state, tx_state;
		u32 rec = FUNC7(priv, HECC_CANREC);
		u32 tec = FUNC7(priv, HECC_CANTEC);

		if (int_status & HECC_CANGIF_WLIF) {
			handled |= HECC_CANGIF_WLIF;
			rx_state = rec >= tec ? CAN_STATE_ERROR_WARNING : 0;
			tx_state = rec <= tec ? CAN_STATE_ERROR_WARNING : 0;
			FUNC10(priv->ndev, "Error Warning interrupt\n");
			FUNC15(ndev, rx_state, tx_state);
		}

		if (int_status & HECC_CANGIF_EPIF) {
			handled |= HECC_CANGIF_EPIF;
			rx_state = rec >= tec ? CAN_STATE_ERROR_PASSIVE : 0;
			tx_state = rec <= tec ? CAN_STATE_ERROR_PASSIVE : 0;
			FUNC10(priv->ndev, "Error passive interrupt\n");
			FUNC15(ndev, rx_state, tx_state);
		}

		if (int_status & HECC_CANGIF_BOIF) {
			handled |= HECC_CANGIF_BOIF;
			rx_state = CAN_STATE_BUS_OFF;
			tx_state = CAN_STATE_BUS_OFF;
			FUNC10(priv->ndev, "Bus off interrupt\n");

			/* Disable all interrupts */
			FUNC9(priv, HECC_CANGIM, 0);
			FUNC1(ndev);
			FUNC15(ndev, rx_state, tx_state);
		}
	} else if (FUNC17(priv->can.state != CAN_STATE_ERROR_ACTIVE)) {
		enum can_state new_state, tx_state, rx_state;
		u32 rec = FUNC7(priv, HECC_CANREC);
		u32 tec = FUNC7(priv, HECC_CANTEC);

		if (rec >= 128 || tec >= 128)
			new_state = CAN_STATE_ERROR_PASSIVE;
		else if (rec >= 96 || tec >= 96)
			new_state = CAN_STATE_ERROR_WARNING;
		else
			new_state = CAN_STATE_ERROR_ACTIVE;

		if (new_state < priv->can.state) {
			rx_state = rec >= tec ? new_state : 0;
			tx_state = rec <= tec ? new_state : 0;
			FUNC15(ndev, rx_state, tx_state);
		}
	}

	if (int_status & HECC_CANGIF_GMIF) {
		while (priv->tx_tail - priv->tx_head > 0) {
			mbxno = FUNC5(priv);
			mbx_mask = FUNC0(mbxno);
			if (!(mbx_mask & FUNC7(priv, HECC_CANTA)))
				break;
			FUNC9(priv, HECC_CANTA, mbx_mask);
			FUNC13(&priv->mbx_lock, flags);
			FUNC6(priv, HECC_CANME, mbx_mask);
			FUNC14(&priv->mbx_lock, flags);
			stamp = FUNC8(priv, mbxno);
			stats->tx_bytes +=
				FUNC3(&priv->offload,
							    mbxno, stamp);
			stats->tx_packets++;
			FUNC2(ndev, CAN_LED_EVENT_TX);
			--priv->tx_tail;
		}

		/* restart queue if wrap-up or if queue stalled on last pkt */
		if ((priv->tx_head == priv->tx_tail &&
		     ((priv->tx_head & HECC_TX_MASK) != HECC_TX_MASK)) ||
		    (((priv->tx_tail & HECC_TX_MASK) == HECC_TX_MASK) &&
		     ((priv->tx_head & HECC_TX_MASK) == HECC_TX_MASK)))
			FUNC12(ndev);

		/* offload RX mailboxes and let NAPI deliver them */
		while ((rx_pending = FUNC7(priv, HECC_CANRMP))) {
			FUNC4(&priv->offload,
							     rx_pending);
		}
	}

	/* clear all interrupt conditions - read back to avoid spurious ints */
	if (priv->use_hecc1int) {
		FUNC9(priv, HECC_CANGIF1, handled);
		int_status = FUNC7(priv, HECC_CANGIF1);
	} else {
		FUNC9(priv, HECC_CANGIF0, handled);
		int_status = FUNC7(priv, HECC_CANGIF0);
	}

	return IRQ_HANDLED;
}